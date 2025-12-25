import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';

class ItemConsumible {
  final String id;
  final String nombre;
  final ItemType type;

  final List<InstantEffect> instantEffects;
  final List<EfectoClass> timedEffects;

  const ItemConsumible({
    required this.id,
    required this.nombre,
    required this.type,
    this.instantEffects = const [],
    this.timedEffects = const [],
  });
}

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

  ItemStack copyWith({ItemDefinition? item, int? quantity}) {
    return ItemStack(
      item: item ?? this.item,
      quantity: quantity ?? this.quantity,
    );
  }
}
