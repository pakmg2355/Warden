import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoCapas = {
  'capaCueroBree': ItemDefinition(
    id: 'capaCueroBree',
    nombre: 'capa de Cuero de Bree',
    descripcion: t('item.capaCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.capa,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 10,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'capaCueroElfico': ItemDefinition(
    id: 'capaCueroElfico',
    nombre: 'capa de Cuero de Elfico',
    descripcion: t('item.capaCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.capa,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 50,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
  'capaMithril': ItemDefinition(
    id: 'capaMithril',
    nombre: 'Capa con incrustaciones de Mithril',
    descripcion: t('item.capaMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.capa,
    color: colorMithril,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 200,
      poder: 0,
      curacion: 10,
      powerRegen: 0,
    ),
  ),
};
