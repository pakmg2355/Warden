import 'package:warden/game/entities/player.dart';

/// =====================
/// MODELOS
/// =====================

class AICombo {
  final String name;
  final List<String> inputs;

  const AICombo(this.name, this.inputs);
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

const comboAtaque1 = AICombo('Ataque corto', ['1', '2', 'X']);
const comboAtaque2 = AICombo('Ataque medio', ['1', '2', '1', 'X']);
const comboAtaque3 = AICombo('Ataque largo', ['1', '2', '1', '2', 'X']);

const comboCura1 = AICombo('Cura corta', ['2', '1', 'X']);
const comboCura2 = AICombo('Cura media', ['2', '1', '2', 'X']);
const comboEscudo = AICombo('Escudo', ['2', '1', '3', '2', 'X']);

const planAtaque = AIPlan('Ataque', [comboAtaque1, comboAtaque2, comboAtaque3]);

const planCura = AIPlan('Cura', [comboEscudo, comboCura1, comboCura2]);

const planMixto = AIPlan('Mixto', [
  comboEscudo,
  comboCura1,
  comboAtaque1,
  comboAtaque2,
  comboAtaque3,
  comboCura2,
]);

const aiPlans = [planAtaque, planCura, planMixto];

AIPlan decidePlan(PlayerClass rival) {
  final ratio = rival.vida / rival.maxvida;

  if (ratio > 0.7) return planAtaque;
  if (ratio > 0.3) return planMixto;
  return planCura;
}

class AISystem {
  static AIState initialState() {
    return AIState(plan: planAtaque, comboIndex: 0, step: 0);
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
