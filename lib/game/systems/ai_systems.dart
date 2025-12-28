import 'package:warden/game/entities/player.dart';
import 'package:warden/game/gambits_repository/gambits_repository.dart';

/// =====================
/// MODELOS
/// =====================

class AICombo {
  final List<String> inputs;

  const AICombo(this.inputs);
}

class AIPlan {
  final String name;
  final List<AICombo> combos;

  const AIPlan(this.name, this.combos);
}

AIPlan ataque1 = AIPlan('Ataque', [
  shieldMaster,
  spear1,
  spear2,
  spear3,
  spear4,
  spear5,
  fear1,
  fear2,
  fear3,
  fear4,
  fear5,
  power,
  fist1,
  fist2,
  fist3,
  fist4,
  fist5,
]);
AIPlan mixto1 = AIPlan('Mixto', [
  shieldMaster,
  shieldTactics,
  spear1,
  spear2,
  spear3,
  spear4,
  spear5,
  power,
  shield1,
  shield2,
  shield3,
  shield4,
  shield5,
  fear1,
  fear2,
  fear3,
  fear4,
  fear5,
  power,
  fist1,
  fist2,
  fist3,
  fist4,
  fist5,
]);
AIPlan cura1 = AIPlan('Cura', [
  shieldMaster,
  shield1,
  shield2,
  shield3,
  shield4,
  shield5,
  power,
  spear1,
  spear2,
  spear3,
  spear4,
  spear5,
  shieldTactics,
  shield1,
  shield2,
  shield3,
  shield4,
  shield5,
  power,
]);

class AIState {
  final AIPlan plan;
  final int comboIndex;
  final int step;

  const AIState({
    required this.plan,
    required this.comboIndex,
    required this.step,
  });

  AICombo get combo => plan.combos[comboIndex];

  AIState copyWith({AIPlan? plan, int? comboIndex, int? step}) {
    return AIState(
      plan: plan ?? this.plan,
      comboIndex: comboIndex ?? this.comboIndex,
      step: step ?? this.step,
    );
  }
}

AIPlan decidePlan(PlayerClass p) {
  final ratio = p.vida / p.maxvida;

  if (ratio > 0.7) return p.planAtaqueIA;
  if (ratio > 0.3) return p.planDefensaIA;
  return p.planDefensaIA;
}

class AISystem {
  static AIState initialState() {
    return AIState(
      plan: AIPlan('Ataque', [
        shieldMaster,
        spear1,
        spear2,
        spear3,
        spear4,
        spear5,
        fear1,
        fear2,
        fear3,
        fear4,
        fear5,
        spear1,
        spear2,
        spear3,
        spear4,
        spear5,
        power,
      ]),
      comboIndex: 0,
      step: 0,
    );
  }

  static String? decideInput(
    PlayerClass ai,
    PlayerClass enemy,
    AIState state,
    void Function(AIState) saveState,
  ) {
    if (ai.vida <= 0) return null;
    if (ai.isFeared || ai.isDazed) return null;
    if (ai.comando.endsWith('X')) return null;

    final combo = state.combo;

    if (state.step >= combo.inputs.length) return null;

    final input = combo.inputs[state.step];

    // 👇 AVANZA AQUÍ
    saveState(state.copyWith(step: state.step + 1));

    return input;
  }

  static PlayerClass update(
    PlayerClass ai,
    AIState state,
    void Function(AIState) saveState,
  ) {
    if (ai.comando.endsWith('X')) {
      return ai;
    }

    // 😱😵 Bloqueado por estado
    if (ai.isFeared || ai.isDazed) {
      return ai; // congelado
    }

    final combo = state.combo;

    // ▶️ Ejecutando inputs del combo
    if (state.step < combo.inputs.length) {
      final input = combo.inputs[state.step];

      saveState(state.copyWith(step: state.step + 1));

      return ai.copyWith(comando: ai.comando + input);
    }

    // 🔄 Combo terminado → decidir plan
    final newPlan = decidePlan(ai);

    int nextComboIndex = state.comboIndex + 1;

    if (newPlan != state.plan || nextComboIndex >= newPlan.combos.length) {
      nextComboIndex = 0;
    }

    saveState(AIState(plan: newPlan, comboIndex: nextComboIndex, step: 0));

    return ai;
  }
}
