import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:warden/game/entities/player.dart';

class PlayerEquipamiento {
  final PlayerEquipo equipo;

  const PlayerEquipamiento({required this.equipo});

  PlayerEquipamiento copyWith({PlayerEquipo? equipo}) {
    return PlayerEquipamiento(equipo: equipo ?? this.equipo);
  }

  Map<String, dynamic> toJson() {
    return {'equipo': equipo.toJson()};
  }

  factory PlayerEquipamiento.fromJson(Map<String, dynamic> json) {
    return PlayerEquipamiento(equipo: PlayerEquipo.fromJson(json['equipo']));
  }
}

class PlayerEquipamientoStorage {
  static const _key = 'PlayerEquipamiento';

  static Future<void> save(PlayerEquipamiento equipamiento) async {
    final prefs = await SharedPreferences.getInstance();
    final json = jsonEncode(equipamiento.toJson());
    await prefs.setString(_key, json);
  }

  static Future<PlayerEquipamiento> load() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_key);

    if (json == null) {
      // 🆕 equipo vacío por defecto
      final empty = PlayerEquipamiento(equipo: PlayerEquipo());
      await save(empty);
      return empty;
    }

    return PlayerEquipamiento.fromJson(jsonDecode(json));
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
