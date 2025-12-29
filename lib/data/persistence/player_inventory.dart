import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:warden/game/entities/item.dart';

class PlayerInventory {
  final List<ItemStack?> inventory;
  final List<ItemStack?> quickSlots;

  const PlayerInventory({required this.inventory, required this.quickSlots});

  Map<String, dynamic> toJson() {
    return {
      'quickSlots': quickSlots.map((e) => e?.toJson()).toList(),
      'inventory': inventory.map((e) => e?.toJson()).toList(),
    };
  }

  factory PlayerInventory.fromJson(Map<String, dynamic> json) {
    return PlayerInventory(
      inventory: (json['inventory'] as List)
          .map((e) => e == null ? null : ItemStack.fromJson(e))
          .toList(),
      quickSlots: (json['quickSlots'] as List)
          .map((e) => e == null ? null : ItemStack.fromJson(e))
          .toList(),
    );
  }

  PlayerInventory copyWith({
    List<ItemStack?>? quickSlots,
    List<ItemStack?>? inventory,
  }) {
    return PlayerInventory(
      quickSlots: quickSlots ?? this.quickSlots,
      inventory: inventory ?? this.inventory,
    );
  }

  //Unifica la lista de items agrupando en el de mayor cantidad
  static List<ItemStack?> _unifyListKeepLength(List<ItemStack?> list) {
    if (list.isEmpty) return const [];

    final Map<String, _Agg> agg = {};

    for (int i = 0; i < list.length; i++) {
      final s = list[i];
      if (s == null) continue;

      final a = agg[s.itemId];
      if (a == null) {
        agg[s.itemId] = _Agg(
          total: s.quantity,
          maxQty: s.quantity,
          maxIndex: i,
        );
      } else {
        a.total += s.quantity;
        if (s.quantity > a.maxQty) {
          a
            ..maxQty = s.quantity
            ..maxIndex = i;
        }
      }
    }

    final List<ItemStack?> result = List<ItemStack?>.from(list);
    for (int i = 0; i < list.length; i++) {
      final s = list[i];
      if (s == null) continue;
      final a = agg[s.itemId]!;
      if (i == a.maxIndex) {
        result[i] = s.copyWith(quantity: a.total);
      } else {
        result[i] = null; // liberar hueco del duplicado
      }
    }
    return result;
  }

  /// Los duplicados pasan a ser `null` (huecos).
  PlayerInventory unifyKeepLength() {
    return PlayerInventory(
      inventory: _unifyListKeepLength(inventory),
      quickSlots: _unifyListKeepLength(quickSlots),
    );
  }
}

class _Agg {
  int total;
  int maxQty;
  int maxIndex;
  _Agg({required this.total, required this.maxQty, required this.maxIndex});
}

class PlayerInventoryStorage {
  static const _key = 'playerinventory';

  static const int maxInventorySlots = 100;
  static const int maxQuickSlots = 10;

  static List<ItemStack?> _normalize(List<ItemStack?> source, int size) {
    return List<ItemStack?>.generate(
      size,
      (i) => i < source.length ? source[i] : null,
    );
  }

  static Future<void> save(PlayerInventory playerInventory) async {
    final prefs = await SharedPreferences.getInstance();

    final inventarioUnificado = PlayerInventory._unifyListKeepLength(
      _normalize(playerInventory.inventory, maxInventorySlots),
    );
    final quickSlotsUnificado = PlayerInventory._unifyListKeepLength(
      _normalize(playerInventory.quickSlots, maxQuickSlots),
    );

    final normalizedUnificado = PlayerInventory(
      inventory: _normalize(inventarioUnificado, maxInventorySlots),
      quickSlots: _normalize(quickSlotsUnificado, maxQuickSlots),
    );

    final json = jsonEncode(normalizedUnificado.toJson());
    await prefs.setString(_key, json);
  }

  static Future<PlayerInventory> load() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_key);

    if (json == null) {
      final initial = PlayerInventory(
        inventory: _normalize([
          const ItemStack(itemId: 'potVida', quantity: 10),
          const ItemStack(itemId: 'potPower', quantity: 10),
          const ItemStack(itemId: 'cascoTela', quantity: 1),
        ], maxInventorySlots),
        quickSlots: _normalize([], maxQuickSlots),
      );

      await save(initial);
      return initial;
    }

    final loaded = PlayerInventory.fromJson(jsonDecode(json));

    return PlayerInventory(
      inventory: _normalize(loaded.inventory, maxInventorySlots),
      quickSlots: _normalize(loaded.quickSlots, maxQuickSlots),
    );
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
