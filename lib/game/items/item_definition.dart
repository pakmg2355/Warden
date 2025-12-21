import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';

class ItemDefinition {
  final String id;
  final String nombre;
  final ItemType type;

  final List<InstantEffect> instantEffects;
  final List<EfectoClass> timedEffects;

  const ItemDefinition({
    required this.id,
    required this.nombre,
    required this.type,
    this.instantEffects = const [],
    this.timedEffects = const [],
  });
}

class ItemStack {
  final ItemDefinition item;
  final int quantity;

  const ItemStack({required this.item, required this.quantity});

  ItemStack consumeOne() => ItemStack(item: item, quantity: quantity - 1);

  bool get isEmpty => quantity <= 0;
}

const potionVida = ItemDefinition(
  id: 'potionVida',
  nombre: 'Health Potion',
  type: ItemType.consumable,
  instantEffects: [
    InstantEffect(kind: InstantEffectKind.vidaPercent, value: 10, source: ''),
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
