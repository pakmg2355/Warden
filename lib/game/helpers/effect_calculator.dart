import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/entities/stats.dart';

class EffectValue {
  final int vida;
  final int power;

  const EffectValue({this.vida = 0, this.power = 0});
}

EffectValue applyStats(EfectoClass e, StatsClass source, StatsClass target) {
  double multiplicador = e.multiplicador;

  switch (e.type) {
    case EffectType.damage:
      final base = e.vida.abs() * multiplicador;
      final ataque = source.ataque;
      final defensa = target.defensa;

      final total = ((base + ataque) - defensa).toInt();
      return EffectValue(vida: -total.clamp(1, 999999));

    case EffectType.heal:
      final base = e.vida * multiplicador;
      final bonus = source.curacion;
      return EffectValue(vida: (base + bonus).toInt());

    case EffectType.power:
      return EffectValue(power: e.power + source.poder);

    default:
      return const EffectValue();
  }
}

double calculateDamageMitigation(PlayerClass target) {
  double mitigation = 0;

  for (final e in target.efectos) {
    if (e.type == EffectType.shieldmaster) {
      mitigation += e.escudo / 100;
    }
  }

  // límite de seguridad (ej: máx 80%)
  return mitigation.clamp(0.0, 0.8);
}
