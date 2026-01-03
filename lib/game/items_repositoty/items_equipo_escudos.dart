import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoEscudos = {
  'escudoMaderaVieja': ItemDefinition(
    id: 'escudoMaderaVieja',
    nombre: 'Escudo de Madera Vieja',
    descripcion: t('item.escudoMaderaVieja.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorMadera,
    minLevel: 1,
    stats: StatsClass(
      ataque: 40,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'escudoHierroElfico': ItemDefinition(
    id: 'escudoHierroElfico',
    nombre: 'Escudo de HierroElfico',
    descripcion: t('item.escudoHierroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorHierroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 40,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'escudoHierroEnano': ItemDefinition(
    id: 'escudoHierroEnano',
    nombre: 'Escudo de HierroEnano',
    descripcion: t('item.escudoHierroEnano.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorHierroEnano,
    minLevel: 1,
    stats: StatsClass(
      ataque: 40,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'escudoAceroGondor': ItemDefinition(
    id: 'escudoAceroGondor',
    nombre: 'Escudo de AceroGondor',
    descripcion: t('item.escudoAceroGondor.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorAceroGondor,
    minLevel: 1,
    stats: StatsClass(
      ataque: 40,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'escudoMithril': ItemDefinition(
    id: 'escudoMithril',
    nombre: 'Escudo de Mithril',
    descripcion: t('item.escudoMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.arma,
    color: colorMithril,
    minLevel: 1,
    stats: StatsClass(
      ataque: 40,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
