import 'dart:math';

import 'package:flutter/material.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/player.dart';

Color baseColorForEffect(EffectType type) {
  switch (type) {
    case EffectType.damage:
      return Colors.red;
    case EffectType.heal:
      return Colors.green;
    case EffectType.power:
      return Colors.blue;
    case EffectType.shieldmaster:
      return Colors.lightGreen;
    case EffectType.shiteldtactics:
      return Colors.cyan;
    case EffectType.fear:
      return Colors.orange;
    case EffectType.daze:
      return Colors.pink;
    case EffectType.fearStack:
      return const Color.fromARGB(255, 255, 255, 255);
    case EffectType.dazeStack:
      return const Color.fromARGB(255, 255, 255, 255);

    case EffectType.none:
      return const Color.fromARGB(255, 94, 91, 255);
  }
}

Color colorForEffect(EfectoClass e) {
  final base = baseColorForEffect(e.type);

  const int maxTier = 5;

  final t = (e.tier.clamp(1, maxTier) - 1) / (maxTier - 1);

  final light = Color.lerp(base, Colors.white, 0.6)!;

  return Color.lerp(light, base, t)!;
}

Color colorForItem(InstantEffectKind e) {
  switch (e) {
    case InstantEffectKind.vidaFlat:
      return Colors.green;
    case InstantEffectKind.vidaPercent:
      return Colors.green;
    case InstantEffectKind.powerFlat:
      return Colors.blue;
    case InstantEffectKind.powerPercent:
      return Colors.blue;
  }
}

bool rollChance(int chance) {
  return Random().nextInt(100) < chance;
}

bool isImmuneToFearOrDaze(PlayerClass target) {
  int protection = 0;

  for (final e in target.efectos) {
    if (e.type == EffectType.shiteldtactics) {
      protection += e.feardazeinmune;
    }
  }

  final roll = Random().nextInt(100);
  return roll < protection;
}

int sumFearStacks(PlayerClass p) => p.efectos
    .where((e) => e.type == EffectType.fearStack)
    .fold(0, (a, e) => a + e.fear);
