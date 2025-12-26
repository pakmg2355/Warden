import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/data/persistence/player_progress.dart';

class PlayerProgressRepository {
  static const _key = 'player_progress';

  // =========================
  // LOAD
  // =========================
  static Future<PlayerProgress> load() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey(_key)) {
      return _defaultProgress('Rodamon');
    }

    final jsonString = prefs.getString(_key)!;
    final Map<String, dynamic> json = jsonDecode(jsonString);

    return PlayerProgress.fromJson(json);
  }

  // =========================
  // SAVE
  // =========================
  static Future<void> save(PlayerProgress p) async {
    final prefs = await SharedPreferences.getInstance();

    final jsonString = jsonEncode(p.toJson());

    await prefs.setString(_key, jsonString);
  }

  // =========================
  // RESET
  // =========================
  static Future<void> reset(String nombre) async {
    final prefs = await SharedPreferences.getInstance();

    // Guardar nombre activo (si lo usas en otro sitio)
    await prefs.setString('current_player_name', nombre);

    final progress = _defaultProgress(nombre);
    await save(progress);
  }

  // =========================
  // DEFAULT
  // =========================
  static PlayerProgress _defaultProgress(String nombre) {
    return PlayerProgress(
      nombre: nombre,
      nivel: 1,
      experiencia: 0,
      experienciaParaSubir: 100,
      faseActual: 1,
      statsBase: StatsClass(
        ataque: 10,
        defensa: 5,
        poder: 3,
        curacion: 2,
        powerRegen: 1,
      ),
    );
  }
}

class Preferencias {
  Idioma? idioma;
  Escritura? escritura;
  Tema? tema;
  bool? musica;
  bool? efectos;

  Preferencias({
    required this.idioma,
    required this.escritura,
    required this.tema,
    required this.musica,
    required this.efectos,
  });

  Idioma? get getIdioma => idioma;
  Escritura? get getEscritura => escritura;
  Tema? get getTema => tema;

  factory Preferencias.fromJson(Map<String, dynamic> json) {
    return Preferencias(
      idioma: Idioma.values.byName(json['idioma']),
      escritura: Escritura.values.byName(json['escritura']),
      tema: Tema.values.byName(json['tema']),
      musica: json['musica'],
      efectos: json['efectos'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'idioma': idioma?.name,
      'escritura': escritura?.name,
      'tema': tema?.name,
      'musica': musica,
      'efectos': efectos,
    };
  }
}
