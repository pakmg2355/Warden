import 'package:flutter/material.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/items_repositoty/icon_repository.dart';

IconData iconDataForEffect(EffectType type) {
  switch (type) {
    case EffectType.damage:
      return Icons.sports_mma;
    case EffectType.fist:
      return Icons.record_voice_over;
    case EffectType.heal:
      return Icons.local_hospital;
    case EffectType.power:
      return Icons.bolt_outlined;
    case EffectType.shieldmaster:
      return Icons.health_and_safety;
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
    case EffectType.statAtaque:
      return Icons.medical_information;
    case EffectType.statDefensa:
      return Icons.medical_information;
    case EffectType.statPoder:
      return Icons.medical_information;
    case EffectType.statCuracion:
      return Icons.medical_information;
    case EffectType.statPowerRegen:
      return Icons.medical_information;
    case EffectType.none:
      return Icons.no_accounts;
  }
}

Widget iconDataForItemClass(String tipo, Color color) {
  return ItemIconRepository.icon(tipo, color);
}
