import 'package:flutter/material.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/data/textos/diccionario.dart';

final itemsPociones = {
  'potVida': ItemDefinition(
    id: 'potVida',
    nombre: 'potVida',
    descripcion: t('item.potVida.descripcion'),
    type: ItemType.consumible,
    clase: ItemClass.pocion,
    minLevel: 1,
    color: Colors.green,
    instantEffects: [
      InstantEffect(kind: InstantEffectKind.vidaPercent, value: 30, source: ''),
    ],
  ),
  'potPower': ItemDefinition(
    id: 'potPower',
    nombre: 'potPower',
    descripcion: t('item.potPower.descripcion'),
    type: ItemType.consumible,
    clase: ItemClass.pocion,
    minLevel: 1,
    color: Colors.blue,
    instantEffects: [
      InstantEffect(
        kind: InstantEffectKind.powerPercent,
        value: 10,
        source: '',
      ),
    ],
  ),
};
