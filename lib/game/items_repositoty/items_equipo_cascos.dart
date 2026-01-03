import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoCascos = {
  'cascoCueroBree': ItemDefinition(
    id: 'cascoCueroBree',
    nombre: 'Casco de Cuero de Bree',
    descripcion: t('item.cascoCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorCueroBree,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoCueroElfico': ItemDefinition(
    id: 'cascoCueroElfico',
    nombre: 'Casco de Cuero de Elfico',
    descripcion: t('item.cascoCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorCueroElfico,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoHierroElfico': ItemDefinition(
    id: 'cascoHierroElfico',
    nombre: 'Casco de Cuero de Bree',
    descripcion: t('item.cascoHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorHierroElfico,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoHierroEnano': ItemDefinition(
    id: 'cascoHierroEnano',
    nombre: 'Casco de Cuero de Bree',
    descripcion: t('item.cascoHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorHierroEnano,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoAceroGondor': ItemDefinition(
    id: 'cascoAceroGondor',
    nombre: 'Casco de Cuero de Bree',
    descripcion: t('item.cascoAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorAceroGondor,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoMithril': ItemDefinition(
    id: 'cascoMithril',
    nombre: 'Casco de Cuero de Bree',
    descripcion: t('item.cascoMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorMithril,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
};
