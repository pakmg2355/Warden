import 'package:flutter/material.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';

final itemsEquipo = {
  'cascoTela': ItemDefinition(
    id: 'cascoTela',
    nombre: 'cascoTela',
    descripcion: t('item.cascoTela.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.casco,
    color: Colors.white,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
