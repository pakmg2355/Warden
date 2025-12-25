import 'package:warden/game/entities/combo.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/textos/diccionario.dart';

List<ComboDefinition> listadoCombosPower = [
  ComboDefinition(
    id: t('combo.power.t1.id'),
    sequence: '13121',
    name: t('combo.power.t1.name'),
    description: t('combo.power.t1.desc'),
    powerCost: 0,
    tier: 1,
    type: EffectType.power,
    effects: [
      EfectoClass(
        nombre: t('combo.power.t1.name'),
        tier: 1,
        vida: -50,
        power: 50,
        type: EffectType.power,
        target: EffectTarget.self,
        duracionInicial: 10,
        statsMod: StatsClass(),
      ),
    ],
  ),
];
