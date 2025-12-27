import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:warden/data/persistence/player_inventory.dart';
import 'package:warden/data/persistence/repositorios.dart';
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

  void startCombat() {
    _paused = false;
  }

  bool get isPaused => _paused;

  final List<String> _aiInputQueue = [];
  static const int _maxAiQueueSize = 6;
  Timer? _timer;
  Timer? _timerIA;
  int _lastAiStepIssued = -1;

  static const Duration tickRate = Duration(seconds: 1);

  GameController(this._state, {required this.progress}) {
    final newRate = calculateIaTickRate(rival: _state.rival);
    Duration iaTickRate = newRate;

    _timer = Timer.periodic(tickRate, (_) => _gameTick());
    _timerIA = Timer.periodic(iaTickRate, (_) => _iaTick());
  }
  int _calculateExpForEnemy(PlayerClass enemy) {
    return enemy.stats.ataque * 2 + enemy.stats.defensa * 3;
  }

  void _onCombatFinished(GameState result) async {
    if (result.result == CombatResult.playerWin) {
      progress = progress.addExperience(_calculateExpForEnemy(state.rival));

      progress = progress.copyWith(
        faseActual: progress.faseActual + 1,
        quickSlots: _state.jugador.quickSlots,
      );

      await PlayerProgressRepository.save(progress);
    }
  }

  GameState _applyPowerRegen(GameState state) {
    final player = state.jugador;

    if (player.vida <= 0) return state;

    final regen = player.stats.powerRegen;

    if (regen <= 0) return state;

    final newPower = (player.power + regen).clamp(0, player.maxpower);

    if (newPower == player.power) return state;

    return state.copyWith(jugador: player.copyWith(power: newPower));
  }

  void _consumeAiInputs() {
    if (_aiInputQueue.isEmpty) return;

    final input = _aiInputQueue.removeAt(0);

    final rival = _state.rival;
    final newCommand = rival.comando + input;

    _state = _state.copyWith(rival: rival.copyWith(comando: newCommand));
  }

  void _iaTick() {
    if (_paused) return;
    if (_state.result != CombatResult.none) return;
    if (_state.rival.isFeared || _state.rival.isDazed) return;
    if (_aiInputQueue.length >= _maxAiQueueSize) return;
    if (aiState.step == _lastAiStepIssued) return;

    final input = AISystem.decideInput(
      _state.rival,
      _state.jugador,
      aiState,
      (newState) => aiState = newState,
    );

    if (input != null) {
      _aiInputQueue.add(input);
      _lastAiStepIssued = aiState.step;
    }
  }

  void _gameTick() {
    final previousResult = state.result;

    _consumeAiInputs();

    _state = state.copyWith(
      rival: AISystem.update(
        state.rival,
        aiState,
        (newState) => aiState = newState,
      ),
    );

    _state = _applyPowerRegen(_state);
    _state = CombatSystem.update(_state);
    _state = EffectSystem.update(_state);
    _state = resolveCombatEnd(state);

    if (previousResult == CombatResult.none &&
        _state.result != CombatResult.none) {
      _onCombatFinished(_state);
    }

    notifyListeners();
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

  void addInput(String input) {
    if (state.jugador.isFeared || state.jugador.isDazed) {
      return;
    }

    FxSystem.onCommandApplied(input);

    final jugador = _state.jugador;

    String newCommand = input == 'X'
        ? '${jugador.comando}X'
        : jugador.comando + input;

    if (newCommand.length > 5 && !newCommand.contains('X')) {
      _state = _state.copyWith(jugador: jugador.copyWith(comando: ''));
    } else {
      _state = _state.copyWith(jugador: jugador.copyWith(comando: newCommand));
    }

    notifyListeners();
  }

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

  @override
  void dispose() {
    _timer?.cancel();
    _timerIA?.cancel();
    super.dispose();
  }
}
