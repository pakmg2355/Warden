import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipohebillas = {
  'hebillaHumano': ItemDefinition(
    id: 'hebillaHumano',
    nombre: t('item.hebillaHumanoBree.nombre'),
    descripcion: t('item.hebillaHumanoBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hebilla,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'hebillaElfico': ItemDefinition(
    id: 'hebillaElfico',
    nombre: t('item.hebillaElfico.nombre'),
    descripcion: t('item.hebillaElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hebilla,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 50,
      powerRegen: 0,
    ),
  ),
  'hebillaEnano': ItemDefinition(
    id: 'hebillaEnano',
    nombre: t('item.hebillaEnano.nombre'),
    descripcion: t('item.hebillaEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hebilla,
    color: colorHierroElfico,
    minLevel: 15,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 120,
      powerRegen: 0,
    ),
  ),
  'hebillaOscuro': ItemDefinition(
    id: 'hebillaOscuro',
    nombre: t('item.hebillaOscuro.nombre'),
    descripcion: t('item.hebillaOscuro.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hebilla,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 250,
      powerRegen: 0,
    ),
  ),
};
