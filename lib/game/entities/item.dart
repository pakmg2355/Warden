import 'dart:ui';

import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/data/items/items_repositoty/item_definition.dart';

class ItemDefinition {
  final String id;
  final String nombre;
  final String descripcion;
  final ItemType type;
  final ItemClass clase;
  final Color color;
  final int minLevel;

  final List<InstantEffect> instantEffects;
  final List<EfectoClass> timedEffects;
  final StatsClass stats;

  const ItemDefinition({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.type,
    required this.clase,
    required this.color,
    required this.minLevel,
    this.instantEffects = const [],
    this.timedEffects = const [],
    this.stats = const StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  });

  String toNombreLvl() {
    return '$nombre Lvl:$minLevel';
  }
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
