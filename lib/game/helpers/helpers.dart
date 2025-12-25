import 'dart:math';

import 'package:flutter/material.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/enums/enums.dart';
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
    case EffectType.statAtaque:
      return const Color.fromARGB(255, 211, 116, 7);
    case EffectType.statDefensa:
      return const Color.fromARGB(255, 14, 11, 226);
    case EffectType.statPoder:
      return const Color.fromARGB(255, 163, 202, 21);
    case EffectType.statCuracion:
      return const Color.fromARGB(255, 207, 99, 144);
    case EffectType.statPowerRegen:
      return const Color.fromARGB(255, 93, 92, 187);
  }
}

IconData iconDataForEffect(EffectType type) {
  switch (type) {
    case EffectType.damage:
      return Icons.fireplace_outlined;
    case EffectType.heal:
      return Icons.healing_outlined;
    case EffectType.power:
      return Icons.bolt_outlined;
    case EffectType.shieldmaster:
    case EffectType.shiteldtactics:
      return Icons.shield_outlined;
    case EffectType.fear:
      return Icons.waves_outlined;
    case EffectType.daze:
      return Icons.cyclone_outlined;
    case EffectType.fearStack:
      return Icons.waves_outlined;
    case EffectType.dazeStack:
      return Icons.cyclone_outlined;
    case EffectType.none:
      return Icons.cyclone_outlined;
    case EffectType.statAtaque:
      return Icons.run_circle;
    case EffectType.statDefensa:
      return Icons.umbrella;
    case EffectType.statPoder:
      return Icons.wind_power;
    case EffectType.statCuracion:
      return Icons.medical_services;
    case EffectType.statPowerRegen:
      return Icons.medical_services;
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
