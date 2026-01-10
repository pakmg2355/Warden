import 'package:flutter/material.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/data/items/items_repositoty/icon_repository.dart';
import 'package:warden/global/constants.dart';

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

IconData iconDataForStat(String stat) {
  switch (stat) {
    case 'ataque':
      return Icons.sports_mma;
    case 'curacion':
      return Icons.local_hospital;
    case 'powerregen':
      return Icons.healing;
    case 'defensa':
      return Icons.health_and_safety;
    case 'poder':
      return Icons.power_settings_new;
  }

  return Icons.question_answer;
}

Icon iconDataForPlan(String plan) {
  switch (plan) {
    case 'Ataque':
      return Icon(Icons.sports_mma, color: colorSpear);
    case 'Mixto':
      return Icon(Icons.density_medium, color: colorFist);
    case 'Cura':
      return Icon(Icons.shield, color: colorShield);
  }

  return Icon(Icons.question_answer, color: Colors.transparent);
}

Widget iconDataForItemClass(String tipo, Color color, {double size = 20}) {
  return ItemIconRepository.icon(tipo, color, size: size);
}
