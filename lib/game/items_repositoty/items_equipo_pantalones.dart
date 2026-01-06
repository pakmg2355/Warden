import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoPantalones = {
  'pantalonesCueroBree': ItemDefinition(
    id: 'pantalonesCueroBree',
    nombre: t('item.pantalonesCueroBree.nombre'),
    descripcion: t('item.pantalonesCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pantalones,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'pantalonesCueroElfico': ItemDefinition(
    id: 'pantalonesCueroElfico',
    nombre: t('item.pantalonesCueroElfico.nombre'),
    descripcion: t('item.pantalonesCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pantalones,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 50,
      poder: 0,
      curacion: 80,
      powerRegen: 0,
    ),
  ),
  'pantalonesHierroElfico': ItemDefinition(
    id: 'pantalonesHierroElfico',
    nombre: t('item.pantalonesHierroElfico.nombre'),
    descripcion: t('item.pantalonesHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pantalones,
    color: colorHierroElfico,
    minLevel: 15,
    stats: StatsClass(
      ataque: 0,
      defensa: 120,
      poder: 0,
      curacion: 120,
      powerRegen: 0,
    ),
  ),
  'pantalonesHierroEnano': ItemDefinition(
    id: 'pantalonesHierroEnano',
    nombre: t('item.pantalonesHierroEnano.nombre'),
    descripcion: t('item.pantalonesHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pantalones,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 180,
      poder: 0,
      curacion: 180,
      powerRegen: 0,
    ),
  ),
  'pantalonesAceroGondor': ItemDefinition(
    id: 'pantalonesAceroGondor',
    nombre: t('item.pantalonesAceroGondor.nombre'),
    descripcion: t('item.pantalonesAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pantalones,
    color: colorAceroGondor,
    minLevel: 30,
    stats: StatsClass(
      ataque: 0,
      defensa: 250,
      poder: 0,
      curacion: 250,
      powerRegen: 0,
    ),
  ),
  'pantalonesMithril': ItemDefinition(
    id: 'pantalonesMithril',
    nombre: t('item.pantalonesMithril.nombre'),
    descripcion: t('item.pantalonesMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pantalones,
    color: colorMithril,
    minLevel: 40,
    stats: StatsClass(
      ataque: 0,
      defensa: 400,
      poder: 0,
      curacion: 390,
      powerRegen: 0,
    ),
  ),
};
