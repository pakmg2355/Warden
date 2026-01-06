import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoEscudos = {
  'escudoMaderaVieja': ItemDefinition(
    id: 'escudoMaderaVieja',
    nombre: t('item.escudoMaderaVieja.nombre'),
    descripcion: t('item.escudoMaderaVieja.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.escudo,
    color: colorMadera,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 40,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'escudoHierroElfico': ItemDefinition(
    id: 'escudoHierroElfico',
    nombre: t('item.escudoHierroElfico.escudo'),
    descripcion: t('item.escudoHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.escudo,
    color: colorHierroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 140,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'escudoHierroEnano': ItemDefinition(
    id: 'escudoHierroEnano',
    nombre: t('item.escudoHierroEnano.nombre'),
    descripcion: t('item.escudoHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.escudo,
    color: colorHierroEnano,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 240,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'escudoAceroGondor': ItemDefinition(
    id: 'escudoAceroGondor',
    nombre: t('item.escudoAceroGondor.nombre'),
    descripcion: t('item.escudoAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.escudo,
    color: colorAceroGondor,
    minLevel: 30,
    stats: StatsClass(
      ataque: 0,
      defensa: 340,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'escudoMithril': ItemDefinition(
    id: 'escudoMithril',
    nombre: t('item.escudoMithril.nombre'),
    descripcion: t('item.escudoMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.escudo,
    color: colorMithril,
    minLevel: 40,
    stats: StatsClass(
      ataque: 0,
      defensa: 540,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
