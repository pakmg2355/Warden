import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:warden/data/models/repositorios.dart';
import 'package:warden/game/entities/enums.dart';

class PreferenciasStorage {
  static const _key = 'preferencias';

  static Future<void> savePreferences(Preferencias preferencias) async {
    final prefs = await SharedPreferences.getInstance();
    final json = jsonEncode(preferencias.toJson());
    await prefs.setString(_key, json);
  }

  static Future<Preferencias?> loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_key);

    if (json == null) return null;

    return Preferencias.fromJson(jsonDecode(json));
  }

  static Future<void> clearPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
