import 'dart:math';

import 'package:warden/game/entities/effect.dart';

class StatusResolution {
  final bool applied;
  final bool consumed; // 👈 NUEVO
  final EfectoClass? activeEffect;
  final List<EfectoClass> remainingEffects;

  const StatusResolution({
    required this.applied,
    required this.consumed,
    required this.activeEffect,
    required this.remainingEffects,
  });
}

StatusResolution resolveStatus({
  required List<EfectoClass> effects,
  required int Function(EfectoClass) valueSelector,
  required bool immune,
}) {
  if (effects.isEmpty) {
    return const StatusResolution(
      applied: false,
      consumed: false,
      activeEffect: null,
      remainingEffects: [],
    );
  }

  // 🛡️ Inmune → se consumen todos
  if (immune) {
    return const StatusResolution(
      applied: false,
      consumed: true,
      activeEffect: null,
      remainingEffects: [],
    );
  }

  final totalChance = effects.map(valueSelector).reduce((a, b) => a + b);

  final roll = Random().nextInt(100);

  // ❌ Falla → NO se consumen
  if (roll >= totalChance) {
    return StatusResolution(
      applied: false,
      consumed: false,
      activeEffect: null,
      remainingEffects: effects,
    );
  }

  // ✅ Acierta → consumir y dejar uno
  effects.sort((a, b) => b.tier.compareTo(a.tier));
  final winner = effects.first;

  return StatusResolution(
    applied: true,
    consumed: true,
    activeEffect: winner,
    remainingEffects: [winner],
  );
}
