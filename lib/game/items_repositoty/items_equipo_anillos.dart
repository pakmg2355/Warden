import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoAnillos = {
  'anilloHumano': ItemDefinition(
    id: 'anilloHumano',
    nombre: t('item.anilloHumanoBree.nombre'),
    descripcion: t('item.anilloHumanoBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.anillo,
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
  'anilloElfico': ItemDefinition(
    id: 'anilloElfico',
    nombre: t('item.anilloElfico.nombre'),
    descripcion: t('item.anilloElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.anillo,
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
  'anilloEnano': ItemDefinition(
    id: 'anilloEnano',
    nombre: t('item.anilloEnano.nombre'),
    descripcion: t('item.anilloEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.anillo,
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
  'anilloOscuro': ItemDefinition(
    id: 'anilloOscuro',
    nombre: t('item.anilloOscuro.nombre'),
    descripcion: t('item.anilloOscuro.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.anillo,
    color: colorHierroEnano,
    minLevel: 20,
    stats: StatsClass(
      ataque: 90,
      defensa: 90,
      poder: 90,
      curacion: 90,
      powerRegen: 90,
    ),
  ),
};
