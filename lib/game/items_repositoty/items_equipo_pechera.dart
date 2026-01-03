import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoPecheras = {
  'pecheraCueroBree': ItemDefinition(
    id: 'pecheraCueroBree',
    nombre: 'pechera de Cuero de Bree',
    descripcion: t('item.pecheraCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pechera,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 10,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'pecheraCueroElfico': ItemDefinition(
    id: 'pecheraCueroElfico',
    nombre: 'pechera de Cuero de Elfico',
    descripcion: t('item.pecheraCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pechera,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 50,
      poder: 20,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'pecheraHierroElfico': ItemDefinition(
    id: 'pecheraHierroElfico',
    nombre: 'pechera de Hierro Elfico',
    descripcion: t('item.pecheraHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pechera,
    color: colorHierroElfico,
    minLevel: 15,
    stats: StatsClass(
      ataque: 0,
      defensa: 120,
      poder: 60,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'pecheraHierroEnano': ItemDefinition(
    id: 'pecheraHierroEnano',
    nombre: 'pechera de Hiero Enano',
    descripcion: t('item.pecheraHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pechera,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 180,
      poder: 90,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'pecheraAceroGondor': ItemDefinition(
    id: 'pecheraAceroGondor',
    nombre: 'pechera de Acero de Gondor',
    descripcion: t('item.pecheraAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pechera,
    color: colorAceroGondor,
    minLevel: 30,
    stats: StatsClass(
      ataque: 0,
      defensa: 250,
      poder: 150,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'pecheraMithril': ItemDefinition(
    id: 'pecheraMithril',
    nombre: 'pechera de Hierro con Mithril',
    descripcion: t('item.pecheraMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pechera,
    color: colorMithril,
    minLevel: 40,
    stats: StatsClass(
      ataque: 0,
      defensa: 400,
      poder: 250,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
};
