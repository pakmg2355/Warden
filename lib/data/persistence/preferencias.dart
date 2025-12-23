import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:warden/game/enums/enums.dart';

class Preferencias {
  Idioma? idioma;
  Escritura? escritura;
  Tema? tema;

  Preferencias({
    required this.idioma,
    required this.escritura,
    required this.tema,
  });

  Idioma? get getIdioma => idioma;
  Escritura? get getEscritura => escritura;
  Tema? get getTema => tema;

  factory Preferencias.fromJson(Map<String, dynamic> json) {
    return Preferencias(
      idioma: Idioma.values.byName(json['idioma']),
      escritura: Escritura.values.byName(json['escritura']),
      tema: Tema.values.byName(json['tema']),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'idioma': idioma?.name,
      'escritura': escritura?.name,
      'tema': tema?.name,
    };
  }
}

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
