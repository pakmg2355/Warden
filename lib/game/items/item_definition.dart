import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';

const potionVida = ItemDefinition(
  id: 'potionVida',
  nombre: 'Health Potion',
  type: ItemType.consumable,
  instantEffects: [
    InstantEffect(kind: InstantEffectKind.vidaPercent, value: 30, source: ''),
  ],
);

const potionPower = ItemDefinition(
  id: 'potionPower',
  nombre: 'Power Potion',
  type: ItemType.consumable,
  instantEffects: [
    InstantEffect(kind: InstantEffectKind.powerPercent, value: 10, source: ''),
  ],
);
