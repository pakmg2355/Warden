import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoArmas = {
  'espadaMaderaVieja': ItemDefinition(
    id: 'espadaMaderaVieja',
    nombre: t('item.espadaMaderaVieja.nombre'),
    descripcion: t('item.espadaMaderaVieja.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorMadera,
    minLevel: 1,
    stats: StatsClass(
      ataque: 40,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'espadaHierroElfico': ItemDefinition(
    id: 'espadaHierroElfico',
    nombre: t('item.espadaHierroElfico.nombre'),
    descripcion: t('item.espadaHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorHierroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 140,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'espadaHierroEnano': ItemDefinition(
    id: 'espadaHierroEnano',
    nombre: t('item.espadaHierroEnano.nombre'),
    descripcion: t('item.espadaHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorHierroEnano,
    minLevel: 2,
    stats: StatsClass(
      ataque: 240,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'espadaAceroGondor': ItemDefinition(
    id: 'espadaAceroGondor',
    nombre: t('item.espadaAceroGondor.nombre'),
    descripcion: t('item.espadaAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorAceroGondor,
    minLevel: 30,
    stats: StatsClass(
      ataque: 340,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'espadaMithril': ItemDefinition(
    id: 'espadaMithril',
    nombre: t('item.espadaMithril.nombre'),
    descripcion: t('item.espadaMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorMithril,
    minLevel: 40,
    stats: StatsClass(
      ataque: 540,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
