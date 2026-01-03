import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoHombreras = {
  'hombrerasCueroBree': ItemDefinition(
    id: 'hombrerasCueroBree',
    nombre: 'hombreras de Cuero de Bree',
    descripcion: t('item.hombrerasCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hombreras,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 00,
      powerRegen: 10,
    ),
  ),
  'hombrerasCueroElfico': ItemDefinition(
    id: 'hombrerasCueroElfico',
    nombre: 'hombreras de Cuero de Elfico',
    descripcion: t('item.hombrerasCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hombreras,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 50,
      poder: 0,
      curacion: 0,
      powerRegen: 50,
    ),
  ),
  'hombrerasHierroElfico': ItemDefinition(
    id: 'hombrerasHierroElfico',
    nombre: 'hombreras de Hierro Elfico',
    descripcion: t('item.hombrerasHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hombreras,
    color: colorHierroElfico,
    minLevel: 15,
    stats: StatsClass(
      ataque: 0,
      defensa: 120,
      poder: 0,
      curacion: 0,
      powerRegen: 120,
    ),
  ),
  'hombrerasHierroEnano': ItemDefinition(
    id: 'hombrerasHierroEnano',
    nombre: 'hombreras de Hiero Enano',
    descripcion: t('item.hombrerasHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hombreras,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 180,
      poder: 0,
      curacion: 0,
      powerRegen: 180,
    ),
  ),
  'hombrerasAceroGondor': ItemDefinition(
    id: 'hombrerasAceroGondor',
    nombre: 'hombreras de Acero de Gondor',
    descripcion: t('item.hombrerasAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hombreras,
    color: colorAceroGondor,
    minLevel: 30,
    stats: StatsClass(
      ataque: 0,
      defensa: 250,
      poder: 0,
      curacion: 0,
      powerRegen: 220,
    ),
  ),
  'hombrerasMithril': ItemDefinition(
    id: 'hombrerasMithril',
    nombre: 'hombreras de Hierro con Mithril',
    descripcion: t('item.hombrerasMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hombreras,
    color: colorMithril,
    minLevel: 40,
    stats: StatsClass(
      ataque: 0,
      defensa: 400,
      poder: 0,
      curacion: 10,
      powerRegen: 300,
    ),
  ),
};
