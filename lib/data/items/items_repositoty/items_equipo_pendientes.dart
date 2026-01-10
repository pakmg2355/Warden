import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoPendientes = {
  'pendienteHumano': ItemDefinition(
    id: 'pendienteHumano',
    nombre: t('item.pendienteHumanoBree.nombre'),
    descripcion: t('item.pendienteHumanoBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pendiente,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 10,
    ),
  ),
  'pendienteElfico': ItemDefinition(
    id: 'pendienteElfico',
    nombre: t('item.pendienteElfico.nombre'),
    descripcion: t('item.pendienteElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pendiente,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 50,
    ),
  ),
  'pendienteEnano': ItemDefinition(
    id: 'pendienteEnano',
    nombre: t('item.pendienteEnano.nombre'),
    descripcion: t('item.pendienteEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pendiente,
    color: colorHierroElfico,
    minLevel: 15,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 120,
    ),
  ),
  'pendienteOscuro': ItemDefinition(
    id: 'pendienteOscuro',
    nombre: t('item.pendienteOscuro.nombre'),
    descripcion: t('item.pendienteOscuro.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pendiente,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 250,
    ),
  ),
};
