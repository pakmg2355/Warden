import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:warden/data/persistence/player_inventory.dart';
import 'package:warden/data/persistence/repositorios.dart';
import 'package:warden/game/controllers/util_combat.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/helpers/velocidad_ia.dart';
import 'package:warden/data/persistence/player_progress.dart';
import 'package:warden/game/systems/ai_systems.dart';
import 'package:warden/game/systems/fx_systems.dart';
import 'game_state.dart';
import '../systems/combat_system.dart';
import '../systems/effect_system.dart';

class GameController extends ChangeNotifier {
  bool _paused = true;
  GameState _state;
  GameState get state => _state;

  PlayerProgress progress;
  PlayerProgress get playerProgress => progress;

  AIState aiState = AISystem.initialState();

  void startCombat() => _paused = false;
  bool get isPaused => _paused;

  Timer? _timerIA;
  Timer? _effectsTimer;

  static const Duration effectsTickRate = Duration(milliseconds: 1000);

  GameController(this._state, {required this.progress}) {
    final iaRate = calculateIaTickRate(rival: _state.rival);

    _timerIA = Timer.periodic(iaRate, (_) => _iaTick());
    _effectsTimer = Timer.periodic(effectsTickRate, (_) => _effectsTick());
  }

  // ───────────────── PLAYER TICK (GAME LOOP) ─────────────────

  void _effectsTick() {
    if (_paused) return;

    final previousResult = _state.result;

    _consumeAiInputs(); // 👈 aquí

    _state = CombatSystem.update(_state);
    _state = _applyPowerRegen(_state);
    _state = EffectSystem.update(_state);
    _state = resolveCombatEnd(_state);

    _state = CombatSystem.update(_state);

    if (previousResult == CombatResult.none &&
        _state.result != CombatResult.none) {
      _onCombatFinished(_state);
    }

    notifyListeners();
  }

  void _applyPlayerInput(String input) {
    if (_state.jugador.isFeared || _state.jugador.isDazed) return;

    FxSystem.onCommandApplied(input);

    final jugador = _state.jugador;
    final newCommand = input == 'X'
        ? '${jugador.comando}X'
        : jugador.comando + input;

    _state = _state.copyWith(
      jugador: jugador.copyWith(
        comando: newCommand.length > 5 && !newCommand.contains('X')
            ? ''
            : newCommand,
      ),
    );
  }

  // ───────────────── IA TIMER ─────────────────
  void _iaTick() {
    if (_paused) return;
    if (_state.result != CombatResult.none) return;
    if (_state.rival.isFeared || _state.rival.isDazed) return;

    final combo = aiState.combo;

    // Si ya terminó el combo, pasar al siguiente
    if (aiState.step >= combo.inputs.length) {
      int nextComboIndex = aiState.comboIndex + 1;

      // reiniciar plan si se acabaron los combos
      if (nextComboIndex >= aiState.plan.combos.length) nextComboIndex = 0;

      aiState = aiState.copyWith(comboIndex: nextComboIndex, step: 0);
    }

    // Tomar el input actual del combo
    final input = aiState.combo.inputs[aiState.step];

    // Aplicar input al comando del rival
    _state = _state.copyWith(
      rival: _state.rival.copyWith(comando: _state.rival.comando + input),
    );

    // Avanzar step
    aiState = aiState.copyWith(step: aiState.step + 1);
  }

  void _consumeAiInputs() {
    final rival = _state.rival;

    _state = _state.copyWith(rival: rival.copyWith(comando: rival.comando));
  }

  // ───────────────── GAME LOGIC ─────────────────

  GameState _applyPowerRegen(GameState state) {
    final p = state.jugador;
    final r = state.rival;

    final newPowerPlayer = (p.power + p.stats.powerRegen).clamp(0, p.maxpower);

    int newPowerRival = (r.power + r.stats.powerRegen).clamp(0, r.maxpower);

    if (newPowerRival < 50) {
      newPowerRival = (r.maxpower / 2).toInt();
    }

    return state.copyWith(
      jugador: p.copyWith(power: newPowerPlayer),
      rival: r.copyWith(power: newPowerRival),
    );
  }

  GameState resolveCombatEnd(GameState state) {
    if (state.result != CombatResult.none) return state;

    if (state.jugador.vida <= 0) {
      return state.copyWith(result: CombatResult.rivalWin);
    }

    if (state.rival.vida <= 0) {
      return state.copyWith(result: CombatResult.playerWin);
    }

    return state;
  }

  int _calculateExpForEnemy(PlayerClass enemy) {
    return enemy.stats.ataque * 2 + enemy.stats.defensa * 3;
  }

  void _onCombatFinished(GameState result) async {
    if (result.result != CombatResult.playerWin) return;

    progress = progress.addExperience(_calculateExpForEnemy(_state.rival));

    progress = progress.copyWith(
      faseActual: progress.faseActual + 1,
      quickSlots: _state.jugador.quickSlots,
    );

    await PlayerProgressRepository.save(progress);
  }

  // ───────────────── PUBLIC API ─────────────────

  void useItem(int slotIndex) {
    final jugador = _state.jugador;

    if (jugador.isFeared || jugador.isDazed) return;

    final slots = [...jugador.quickSlots];
    final inventario = [...jugador.inventory];
    final stack = slots[slotIndex];

    if (stack == null || stack.quantity <= 0) return;

    final item = stack.item;

    // 1️⃣ Aplicar efectos instantáneos
    final newInstantEffects = [
      ...jugador.instantEffects,
      ...item.instantEffects.map((e) => e.copyWith(source: item.nombre)),
    ];

    // 2️⃣ Aplicar efectos temporales
    final newEfectos = [...jugador.efectos, ...item.timedEffects];

    // 3️⃣ Reducir stack
    final newQuantity = stack.quantity - 1;
    slots[slotIndex] = newQuantity > 0
        ? stack.copyWith(quantity: newQuantity)
        : null;

    PlayerInventoryStorage.save(
      PlayerInventory(inventory: inventario, quickSlots: slots),
    );

    // 4️⃣ Actualizar jugador
    _state = _state.copyWith(
      jugador: jugador.copyWith(
        instantEffects: newInstantEffects,
        efectos: newEfectos,
        quickSlots: slots,
      ),
    );

    notifyListeners();
  }

  void updateStateInventory() async {
    final jugador = _state.jugador;
    final inventario = await loadInventory();

    // 4️⃣ Actualizar jugador
    _state = _state.copyWith(
      jugador: jugador.copyWith(quickSlots: inventario.quickSlots),
    );

    notifyListeners();
  }

  void addInput(String input) {
    if (_state.jugador.isFeared || _state.jugador.isDazed) return;

    // 🔥 FEEDBACK INMEDIATO
    _applyPlayerInput(input);
    notifyListeners();
  }

  @override
  void dispose() {
    _timerIA?.cancel();
    _effectsTimer?.cancel();
    super.dispose();
  }
}
