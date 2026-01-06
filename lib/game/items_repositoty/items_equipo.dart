import 'package:flutter/material.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/items_repositoty/items_equipo_anillos.dart';
import 'package:warden/game/items_repositoty/items_equipo_armas.dart';
import 'package:warden/game/items_repositoty/items_equipo_botas.dart';
import 'package:warden/game/items_repositoty/items_equipo_capas.dart';
import 'package:warden/game/items_repositoty/items_equipo_cascos.dart';
import 'package:warden/game/items_repositoty/items_equipo_escudos.dart';
import 'package:warden/game/items_repositoty/items_equipo_guantes.dart';
import 'package:warden/game/items_repositoty/items_equipo_hombreras.dart';
import 'package:warden/game/items_repositoty/items_equipo_pantalones.dart';
import 'package:warden/game/items_repositoty/items_equipo_pechera.dart';
import 'package:warden/game/textos/diccionario.dart';

final itemsEquipoVacio = {
  'vacio': ItemDefinition(
    id: 'vacio',
    nombre: 'vacio',
    descripcion: t('item.vacio.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.vacio,
    color: Colors.white,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};

final itemsEquipo = {
  ...itemsEquipoVacio,
  ...itemsEquipoArmas,
  ...itemsEquipoEscudos,
  ...itemsEquipoCapas,
  ...itemsEquipoCascos,
  ...itemsEquipoGuantes,
  ...itemsEquipoHombreras,
  ...itemsEquipoPantalones,
  ...itemsEquipoPecheras,
  ...itemsEquipoAnillos,
  ...itemsEquipoBotas,
  ...itemsEquipoBotas,
  ...itemsEquipoBotas,
  ...itemsEquipoBotas,
  ...itemsEquipoBotas,
  ...itemsEquipoBotas,
  ...itemsEquipoBotas,
  ...itemsEquipoBotas,
};
