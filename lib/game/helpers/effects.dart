import 'dart:math';

import 'package:warden/game/entities/player.dart';
import 'package:warden/game/entities/enums.dart';

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

  return protection > 0;
}

int sumFearStacks(PlayerClass p) => p.efectos
    .where((e) => e.type == EffectType.fearStack)
    .fold(0, (a, e) => a + e.fear);
