import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoCascos = {
  'cascoCueroBree': ItemDefinition(
    id: 'cascoCueroBree',
    nombre: t('item.cascoCueroBree.nombre'),
    descripcion: t('item.cascoCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
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
  'cascoCueroElfico': ItemDefinition(
    id: 'cascoCueroElfico',
    nombre: t('item.cascoCueroElfico.nombre'),
    descripcion: t('item.cascoCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 50,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoHierroElfico': ItemDefinition(
    id: 'cascoHierroElfico',
    nombre: t('item.cascoHierroElfico.nombre'),
    descripcion: t('item.cascoHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorHierroElfico,
    minLevel: 15,
    stats: StatsClass(
      ataque: 0,
      defensa: 120,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoHierroEnano': ItemDefinition(
    id: 'cascoHierroEnano',
    nombre: t('item.cascoHierroEnano.nombre'),
    descripcion: t('item.cascoHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 180,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoAceroGondor': ItemDefinition(
    id: 'cascoAceroGondor',
    nombre: t('item.cascoAceroGondor.nombre'),
    descripcion: t('item.cascoAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorAceroGondor,
    minLevel: 30,
    stats: StatsClass(
      ataque: 0,
      defensa: 250,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'cascoMithril': ItemDefinition(
    id: 'cascoMithril',
    nombre: t('item.cascoMithril.nombre'),
    descripcion: t('item.cascoMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: colorMithril,
    minLevel: 40,
    stats: StatsClass(
      ataque: 0,
      defensa: 400,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
};
