import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoBotas = {
  'botasCueroBree': ItemDefinition(
    id: 'botasCueroBree',
    nombre: 'Botas de Cuero de Bree',
    descripcion: t('item.botasCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
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
  'botasCueroElfico': ItemDefinition(
    id: 'botasCueroElfico',
    nombre: 'Botas de Cuero de Elfico',
    descripcion: t('item.botasCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
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
  'botasHierroElfico': ItemDefinition(
    id: 'botasHierroElfico',
    nombre: 'Botas de Cuero de Bree',
    descripcion: t('item.botasHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
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
  'botasHierroEnano': ItemDefinition(
    id: 'botasHierroEnano',
    nombre: 'Botas de Cuero de Bree',
    descripcion: t('item.botasHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
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
  'botasAceroGondor': ItemDefinition(
    id: 'botasAceroGondor',
    nombre: 'Botas de Cuero de Bree',
    descripcion: t('item.botasAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
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
  'botasMithril': ItemDefinition(
    id: 'botasMithril',
    nombre: 'Botas de Cuero de Bree',
    descripcion: t('item.botasMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
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
