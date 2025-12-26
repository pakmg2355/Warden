import 'package:flutter/material.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';

Color colorForStat(String stat) {
  switch (stat) {
    case 'ataque':
      return const Color.fromARGB(255, 255, 174, 168);
    case 'defensa':
      return const Color.fromARGB(255, 159, 187, 128);
    case 'curacion':
      return const Color.fromARGB(255, 119, 180, 121);
    case 'poder':
      return const Color.fromARGB(255, 255, 217, 161);
    case 'powerregen':
      return const Color.fromARGB(255, 122, 114, 170);
  }
  return Colors.transparent;
}

Color baseColorForEffect(EffectType type) {
  switch (type) {
    case EffectType.damage:
      return Colors.red;
    case EffectType.heal:
      return Colors.green;
    case EffectType.power:
      return Colors.blue;
    case EffectType.shieldmaster:
      return Colors.cyan;
    case EffectType.shiteldtactics:
      return Colors.cyanAccent;
    case EffectType.fear:
      return Colors.orange;
    case EffectType.daze:
      return Colors.pink;
    case EffectType.fearStack:
      return Colors.orange;
    case EffectType.dazeStack:
      return Colors.pink;
    case EffectType.statAtaque:
      return Colors.red;
    case EffectType.statDefensa:
      return Colors.cyan;
    case EffectType.statPoder:
      return Colors.blue;
    case EffectType.statCuracion:
      return Colors.green;
    case EffectType.statPowerRegen:
      return Colors.blue;
    case EffectType.none:
      return Colors.white;
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
