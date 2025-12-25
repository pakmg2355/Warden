import 'package:flutter/material.dart';
import 'package:warden/game/entities/enums.dart';

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
