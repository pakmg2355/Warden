import 'package:warden/game/entities/combo.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/data/textos/diccionario.dart';

List<ComboDefinition> listadoCombosProtection = [
  ComboDefinition(
    id: t('combo.shieldmaster.t1.id'),
    sequence: '2132',
    name: t('combo.shieldmaster.t1.name'),
    description: t('combo.shieldmaster.t1.desc'),
    powerCost: 50,
    tier: 1,
    type: EffectType.shieldmaster,
    effects: [
      EfectoClass(
        nombre: t('combo.shieldmaster.t1.name'),
        tier: 1,
        escudo: 50,
        type: EffectType.shieldmaster,
        target: EffectTarget.self,
        duracionInicial: 60,
        statsMod: StatsClass(),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.shieldtactics.t1.id'),
    sequence: '2131',
    name: t('combo.shieldtactics.t1.name'),
    description: t('combo.shieldtactics.t1.desc'),
    powerCost: 50,
    tier: 1,
    type: EffectType.shiteldtactics,
    effects: [
      EfectoClass(
        nombre: t('combo.shieldtactics.t1.name'),
        tier: 1,
        feardazeinmune: 50,
        type: EffectType.shiteldtactics,
        target: EffectTarget.self,
        duracionInicial: 60,
        statsMod: StatsClass(),
      ),
    ],
  ),
];
