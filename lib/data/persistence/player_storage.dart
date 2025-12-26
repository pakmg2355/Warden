import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warden/data/persistence/player_progress.dart';

class PlayerStorage {
  static const _key = 'player_progress';

  static Future<void> save(PlayerProgress progress) async {
    final prefs = await SharedPreferences.getInstance();
    final json = jsonEncode(progress.toJson());
    await prefs.setString(_key, json);
  }

  static Future<PlayerProgress?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_key);

    if (json == null) return null;

    return PlayerProgress.fromJson(jsonDecode(json));
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
