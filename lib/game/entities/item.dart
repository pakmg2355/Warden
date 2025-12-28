import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/items_repositoty/item_definition.dart';

class ItemDefinition {
  final String id;
  final String nombre;
  final String descripcion;
  final ItemType type;
  final int minLevel;

  final List<InstantEffect> instantEffects;
  final List<EfectoClass> timedEffects;

  const ItemDefinition({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.type,
    required this.minLevel,
    this.instantEffects = const [],
    this.timedEffects = const [],
  });
}

class ItemStack {
  final String itemId;
  final int quantity;

  const ItemStack({required this.itemId, required this.quantity});

  ItemDefinition get item => ItemDatabase.getById(itemId);

  Map<String, dynamic> toJson() => {'itemId': itemId, 'quantity': quantity};

  factory ItemStack.fromJson(Map<String, dynamic> json) {
    return ItemStack(itemId: json['itemId'], quantity: json['quantity']);
  }

  ItemStack copyWith({String? itemId, int? quantity}) {
    return ItemStack(
      itemId: itemId ?? this.itemId,
      quantity: quantity ?? this.quantity,
    );
  }
}
