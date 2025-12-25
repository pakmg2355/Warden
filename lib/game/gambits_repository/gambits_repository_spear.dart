import 'package:warden/game/entities/combo.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/textos/diccionario.dart';

List<ComboDefinition> listadoCombosSpear = [
  ComboDefinition(
    id: t('combo.spear.t1.id'),
    sequence: '12',
    name: t('combo.spear.t1.name'),
    type: EffectType.damage,
    tier: 1,
    description: t('combo.spear.t1.desc'),
    powerCost: 10,
    effects: [
      EfectoClass(
        nombre: t('combo.spear.t1.name'),
        tier: 1,
        vida: -50,
        type: EffectType.damage,
        target: EffectTarget.enemy,
        duracionInicial: 15,
        statsMod: StatsClass(),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.spear.t2.id'),
    sequence: '121',
    name: t('combo.spear.t2.name'),
    description: t('combo.spear.t2.desc'),
    powerCost: 30,
    type: EffectType.damage,
    tier: 2,

    effects: [
      EfectoClass(
        nombre: t('combo.spear.t2.name'),
        tier: 2,
        vida: -100,
        type: EffectType.damage,
        target: EffectTarget.enemy,
        duracionInicial: 15,
        statsMod: StatsClass(),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.spear.t3.id'),
    sequence: '1212',
    name: t('combo.spear.t3.name'),
    description: t('combo.spear.t3.desc'),
    powerCost: 70,
    type: EffectType.damage,
    tier: 3,

    effects: [
      EfectoClass(
        nombre: t('combo.spear.t3.name'),
        tier: 3,
        vida: -150,
        type: EffectType.damage,
        target: EffectTarget.enemy,
        duracionInicial: 15,
        statsMod: StatsClass(),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.spear.t4.id'),
    sequence: '12121',
    name: t('combo.spear.t4.name'),
    description: t('combo.spear.t4.desc'),
    powerCost: 90,
    type: EffectType.damage,
    tier: 4,

    effects: [
      EfectoClass(
        nombre: t('combo.spear.t4.name'),
        tier: 4,
        vida: -200,
        type: EffectType.damage,
        target: EffectTarget.enemy,
        duracionInicial: 15,
        statsMod: StatsClass(),
      ),
    ],
  ),
];
