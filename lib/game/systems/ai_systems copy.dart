import 'package:warden/game/entities/player.dart';

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

const spear1 = AICombo(['1', '2', 'X']);
const spear2 = AICombo(['1', '2', '1', 'X']);
const spear3 = AICombo(['1', '2', '1', '2', 'X']);
const spear4 = AICombo(['1', '2', '1', '2', 'X']);
const spear5 = AICombo(['1', '2', '1', '2', '1', 'X']);

const shield1 = AICombo(['2', '1', 'X']);
const shield2 = AICombo(['2', '1', '2', 'X']);
const shield3 = AICombo(['2', '1', '2', '1', 'X']);
const shield4 = AICombo(['2', '1', '2', '1', 'X']);
const shield5 = AICombo(['2', '1', '2', '1', '2', 'X']);

const daze1 = AICombo(['3', '1', 'X']);
const daze2 = AICombo(['3', '1', '3', 'X']);
const daze3 = AICombo(['3', '1', '3', '1', 'X']);
const daze4 = AICombo(['3', '1', '3', '1', 'X']);
const daze5 = AICombo(['3', '1', '3', '1', '3', 'X']);

const fear1 = AICombo(['3', '2', 'X']);
const fear2 = AICombo(['3', '2', '3', 'X']);
const fear3 = AICombo(['3', '2', '3', '2', 'X']);
const fear4 = AICombo(['3', '2', '3', '2', 'X']);
const fear5 = AICombo(['3', '2', '3', '2', '3', 'X']);

const shieldMaster = AICombo(['2', '1', '3', '2', 'X']);
const shieldTactics = AICombo(['2', '1', '3', '1', 'X']);
const power = AICombo(['1', '3', '1', '2', '1', 'X']);

const quieto = AICombo(['3', '3', 'X']);

const planAtaque = AIPlan('Ataque', [
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
]);
const planCura = AIPlan('Cura', [
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
]);
const planMixto = AIPlan('Mixto', [
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
]);
const planPower = AIPlan('Power', [power, shield5, spear5]);
const planQuieto = AIPlan('Quieto', [quieto]);

const aiPlans = [planAtaque, planCura, planMixto, planQuieto];

AIPlan decidePlan(PlayerClass p) {
  final ratio = p.vida / p.maxvida;
  final pw = p.power / p.maxpower;

  if (pw < 0.3) {
    return planPower;
  } else {
    if (ratio > 0.7) return planAtaque;
    if (ratio > 0.3) return planMixto;
    return planCura;
  }
}

class AISystem {
  static AIState initialState() {
    return AIState(plan: planAtaque, comboIndex: 0, step: 0);
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
