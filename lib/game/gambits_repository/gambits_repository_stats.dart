import 'package:warden/game/entities/combo.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/textos/diccionario.dart';

List<ComboDefinition> listadoCombosStats = [
  ComboDefinition(
    id: t('combo.statAtaque.t1.id'),
    sequence: '123',
    name: t('combo.statAtaque.t1.name'),
    description: t('combo.statAtaque.t1.desc'),
    powerCost: 100,
    tier: 1,
    type: EffectType.statAtaque,
    effects: [
      EfectoClass(
        nombre: t('combo.statAtaque.t1.name'),
        tier: 1,
        target: EffectTarget.self,
        type: EffectType.statAtaque,
        duracionInicial: 30,
        tiempo: 0,
        statsMod: StatsClass(ataque: 10),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.statDefensa.t1.id'),
    sequence: '213',
    name: t('combo.statDefensa.t1.name'),
    description: t('combo.statDefensa.t1.desc'),
    powerCost: 100,
    tier: 1,
    type: EffectType.statDefensa,
    effects: [
      EfectoClass(
        nombre: t('combo.statDefensa.t1.name'),
        tier: 1,
        target: EffectTarget.self,
        type: EffectType.statDefensa,
        duracionInicial: 30,
        tiempo: 0,
        statsMod: StatsClass(defensa: 10),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.statPoder.t1.id'),
    sequence: '111',
    name: t('combo.statPoder.t1.name'),
    description: t('combo.statPoder.t1.desc'),
    powerCost: 100,
    tier: 4,
    type: EffectType.statPoder,
    effects: [
      EfectoClass(
        nombre: t('combo.statPoder.t1.name'),
        tier: 4,
        target: EffectTarget.self,
        type: EffectType.statPoder,
        duracionInicial: 30,
        tiempo: 0,
        statsMod: StatsClass(poder: 10),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.statCuracion.t1.id'),
    sequence: '222',
    name: t('combo.statCuracion.t1.name'),
    description: t('combo.statCuracion.t1.desc'),
    powerCost: 10,
    tier: 4,
    type: EffectType.statCuracion,
    effects: [
      EfectoClass(
        nombre: t('combo.statCuracion.t1.name'),
        tier: 4,
        target: EffectTarget.self,
        type: EffectType.statCuracion,
        duracionInicial: 30,
        tiempo: 0,
        statsMod: StatsClass(curacion: 10),
      ),
    ],
  ),
  ComboDefinition(
    id: t('combo.statPowerRegen.t1.id'),
    sequence: '321',
    name: t('combo.statPowerRegen.t1.name'),
    description: t('combo.statPowerRegen.t1.desc'),
    powerCost: 10,
    tier: 4,
    type: EffectType.statPowerRegen,
    effects: [
      EfectoClass(
        nombre: t('combo.statPowerRegen.t1.name'),
        tier: 4,
        target: EffectTarget.self,
        type: EffectType.statPowerRegen,
        duracionInicial: 30,
        tiempo: 0,
        statsMod: StatsClass(powerRegen: 10),
      ),
    ],
  ),
];
