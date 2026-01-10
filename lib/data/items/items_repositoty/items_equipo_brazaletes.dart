import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoBrazaletes = {
  'brazaleteHumano': ItemDefinition(
    id: 'brazaleteHumano',
    nombre: t('item.brazaleteHumanoBree.nombre'),
    descripcion: t('item.brazaleteHumanoBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.brazalete,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 10,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'brazaleteElfico': ItemDefinition(
    id: 'brazaleteElfico',
    nombre: t('item.brazaleteElfico.nombre'),
    descripcion: t('item.brazaleteElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.brazalete,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 50,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'brazaleteEnano': ItemDefinition(
    id: 'brazaleteEnano',
    nombre: t('item.brazaleteEnano.nombre'),
    descripcion: t('item.brazaleteEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.brazalete,
    color: colorHierroElfico,
    minLevel: 15,
    stats: StatsClass(
      ataque: 120,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'brazaleteOscuro': ItemDefinition(
    id: 'brazaleteOscuro',
    nombre: t('item.brazaleteOscuro.nombre'),
    descripcion: t('item.brazaleteOscuro.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.brazalete,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 250,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
