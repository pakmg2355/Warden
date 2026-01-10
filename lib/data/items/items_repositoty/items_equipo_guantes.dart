import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoGuantes = {
  'guantesCueroBree': ItemDefinition(
    id: 'guantesCueroBree',
    nombre: t('item.guantesCueroBree.nombre'),
    descripcion: t('item.guantesCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.guantes,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 10,
      defensa: 0,
      poder: 10,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'guantesCueroElfico': ItemDefinition(
    id: 'guantesCueroElfico',
    nombre: t('item.guantesCueroElfico.nombre'),
    descripcion: t('item.guantesCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.guantes,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 50,
      defensa: 0,
      poder: 50,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'guantesMithril': ItemDefinition(
    id: 'guantesMithril',
    nombre: t('item.guantesMithril.nombre'),
    descripcion: t('item.guantesMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.guantes,
    color: colorMithril,
    minLevel: 20,
    stats: StatsClass(
      ataque: 150,
      defensa: 200,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
