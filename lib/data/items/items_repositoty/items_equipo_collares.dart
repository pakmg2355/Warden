import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoCollares = {
  'collarHumano': ItemDefinition(
    id: 'collarHumano',
    nombre: t('item.collarHumanoBree.nombre'),
    descripcion: t('item.collarHumanoBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.collar,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'collarElfico': ItemDefinition(
    id: 'collarElfico',
    nombre: t('item.collarElfico.nombre'),
    descripcion: t('item.collarElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.collar,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 50,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'collarEnano': ItemDefinition(
    id: 'collarEnano',
    nombre: t('item.collarEnano.nombre'),
    descripcion: t('item.collarEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.collar,
    color: colorHierroElfico,
    minLevel: 15,
    stats: StatsClass(
      ataque: 0,
      defensa: 120,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'collarOscuro': ItemDefinition(
    id: 'collarOscuro',
    nombre: t('item.collarOscuro.nombre'),
    descripcion: t('item.collarOscuro.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.collar,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 250,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
