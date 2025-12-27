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

    final normalized = PlayerInventory(
      inventory: _normalize(playerInventory.inventory, maxInventorySlots),
      quickSlots: _normalize(playerInventory.quickSlots, maxQuickSlots),
    );

    final json = jsonEncode(normalized.toJson());
    await prefs.setString(_key, json);
  }

  static Future<PlayerInventory> load() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_key);

    if (json == null) {
      final initial = PlayerInventory(
        inventory: _normalize([
          ItemStack(itemId: 'potionvida', quantity: 10),
          ItemStack(itemId: 'potionpower', quantity: 10),
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
