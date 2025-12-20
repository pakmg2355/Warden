import 'package:warden/game/entities/stats.dart';

class PlayerProgress {
  final String nombre;
  final int nivel;
  final int experiencia;
  final int experienciaParaSubir;
  final int faseActual;

  final StatsClass statsBase;

  const PlayerProgress({
    required this.nombre,
    required this.nivel,
    required this.experiencia,
    required this.experienciaParaSubir,
    required this.faseActual,
    required this.statsBase,
  });

  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'nivel': nivel,
      'experiencia': experiencia,
      'experienciaParaSubir': experienciaParaSubir,
      'faseActual': faseActual,
      'statsBase': statsBase.toJson(),
    };
  }

  static PlayerProgress initial(String nombre) {
    return PlayerProgress(
      nombre: nombre,
      nivel: 1,
      experiencia: 0,
      experienciaParaSubir: 100,
      faseActual: 1,
      statsBase: const StatsClass(
        ataque: 10,
        defensa: 5,
        poder: 3,
        curacion: 2,
        powerRegen: 1,
      ),
    );
  }

  factory PlayerProgress.fromJson(Map<String, dynamic> json) {
    return PlayerProgress(
      nombre: json['nombre'],
      nivel: json['nivel'],
      experiencia: json['experiencia'],
      experienciaParaSubir: json['experienciaParaSubir'],
      faseActual: json['faseActual'],
      statsBase: StatsClass.fromJson(json['statsBase']),
    );
  }

  int calculateExpToNextLevel() {
    return nivel * 100;
  }

  PlayerProgress addExperience(int amount) {
    int exp = experiencia + amount;
    int lvl = nivel;
    int expToNext = calculateExpToNextLevel();

    while (exp >= expToNext) {
      exp -= expToNext;
      lvl++;
      expToNext = lvl * 100;
    }

    return copyWith(
      nivel: lvl,
      experiencia: exp,
      experienciaParaSubir: expToNext,
    );
  }

  PlayerProgress copyWith({
    String? nombre,
    int? nivel,
    int? experiencia,
    int? experienciaParaSubir,
    int? faseActual,
    StatsClass? statsBase,
  }) {
    return PlayerProgress(
      nombre: nombre ?? this.nombre,
      nivel: nivel ?? this.nivel,
      experiencia: experiencia ?? this.experiencia,
      experienciaParaSubir: experienciaParaSubir ?? this.experienciaParaSubir,
      faseActual: faseActual ?? this.faseActual,
      statsBase: statsBase ?? this.statsBase,
    );
  }
}
