import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:warden/data/models/player_progress_repository.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/progress/player_progress.dart';
import 'package:warden/game/systems/ai_systems.dart';
import 'package:warden/game/systems/audio_systems.dart';
import 'game_state.dart';
import 'combat/combat_system.dart';
import 'systems/effect_system.dart';

class GameController extends ChangeNotifier {
  GameState _state;
  GameState get state => _state;

  PlayerProgress progress;
  PlayerProgress get playerProgress => progress;

  AIState aiState = AISystem.initialState();

  Timer? _timer;

  static const Duration tickRate = Duration(seconds: 1);

  GameController(this._state, {required this.progress}) {
    _timer = Timer.periodic(tickRate, (_) => _gameTick());
  }
  int _calculateExpForEnemy(PlayerClass enemy) {
    return enemy.stats.ataque * 2 + enemy.stats.defensa * 3;
  }

  void _onCombatFinished(CombatResult result) async {
    if (result == CombatResult.playerWin) {
      progress = progress.addExperience(_calculateExpForEnemy(state.rival));

      progress = progress.copyWith(faseActual: progress.faseActual + 1);

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

  void _gameTick() {
    final previousResult = state.result;

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
      _onCombatFinished(_state.result);
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

    //AudioSystem.onCommandApplied(input);

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
    super.dispose();
  }
}
