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
      return Colors.lightGreen;
    case EffectType.shiteldtactics:
      return Colors.cyan;
    case EffectType.fear:
      return Colors.orange;
    case EffectType.daze:
      return Colors.pink;
    case EffectType.fearStack:
      return const Color.fromARGB(255, 255, 218, 255);
    case EffectType.dazeStack:
      return const Color.fromARGB(255, 226, 201, 255);
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
