import 'package:warden/game/entities/combo.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/data/textos/diccionario.dart';

List<ComboDefinition> listadoCombosShield = [
  ComboDefinition(
    id: t('combo.shield.t1.id'),
    sequence: '21',
    name: t('combo.shield.t1.name'),
    description: t('combo.shield.t1.desc'),
    powerCost: 50,
    tier: 1,
    type: EffectType.heal,
    effects: [
      EfectoClass(
        nombre: t('combo.shield.t1.name'),
        tier: 1,
        vida: 50,
        type: EffectType.heal,
        target: EffectTarget.self,
        duracionInicial: 15,
        statsMod: StatsClass(),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.shield.t2.id'),
    sequence: '212',
    name: t('combo.shield.t2.name'),
    description: t('combo.shield.t2.desc'),
    powerCost: 100,
    tier: 2,
    type: EffectType.heal,
    effects: [
      EfectoClass(
        nombre: t('combo.shield.t2.name'),
        tier: 2,
        vida: 100,
        type: EffectType.heal,
        target: EffectTarget.self,
        duracionInicial: 15,
        statsMod: StatsClass(),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.shield.t3.id'),
    sequence: '2121',
    name: t('combo.shield.t3.name'),
    description: t('combo.shield.t3.desc'),
    powerCost: 150,
    tier: 3,
    type: EffectType.heal,
    effects: [
      EfectoClass(
        nombre: t('combo.shield.t3.name'),
        tier: 3,
        vida: 150,
        type: EffectType.heal,
        target: EffectTarget.self,
        duracionInicial: 15,
        statsMod: StatsClass(),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.shield.t4.id'),
    sequence: '21212',
    name: t('combo.shield.t4.name'),
    description: t('combo.shield.t4.desc'),
    powerCost: 200,
    tier: 4,
    type: EffectType.heal,

    effects: [
      EfectoClass(
        nombre: t('combo.shield.t4.name'),
        tier: 4,
        vida: 200,
        type: EffectType.heal,
        target: EffectTarget.self,
        duracionInicial: 15,
        statsMod: StatsClass(),
      ),
    ],
  ),
];
