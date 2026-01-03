import 'package:warden/data/persistence/player_equipo.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/stats.dart';

class PlayerProgress {
  final String nombre;
  final int nivel;
  final int experiencia;
  final int experienciaParaSubir;
  final int faseActual;
  final String pantallaActual;
  final PlayerEquipo equipo;

  final StatsClass statsBase;

  const PlayerProgress({
    required this.nombre,
    required this.nivel,
    required this.experiencia,
    required this.experienciaParaSubir,
    required this.faseActual,
    required this.pantallaActual,
    required this.equipo,
    required this.statsBase,
  });

  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'nivel': nivel,
      'experiencia': experiencia,
      'experienciaParaSubir': experienciaParaSubir,
      'faseActual': faseActual,
      'pantallaActual': pantallaActual,
      'statsBase': statsBase.toJson(),
      'equipo': equipo.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlayerProgress('
        'nombre: $nombre, '
        'nivel: $nivel, '
        'experiencia: $experiencia, '
        'experienciaParaSubir: $experienciaParaSubir, '
        'faseActual: $faseActual, '
        'pantallaActual: $pantallaActual, '
        'statsBase: ${statsBase.toString()}, '
        'equipo: ${equipo.toJson()}'
        ')';
  }

  factory PlayerProgress.fromJson(Map<String, dynamic> json) {
    return PlayerProgress(
      nombre: json['nombre'] ?? 'Rodamon',
      nivel: json['nivel'] ?? 1,
      experiencia: json['experiencia'] ?? 1,
      experienciaParaSubir: json['experienciaParaSubir'],
      faseActual: json['faseActual'] ?? 1,
      pantallaActual: json['pantallaActual'] ?? 'inicio',
      statsBase: StatsClass.fromJson(json['statsBase']),
      equipo: PlayerEquipo.fromJson(json['equipo']),
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
    String? pantallaActual,
    StatsClass? statsBase,
    PlayerEquipo? equipo,
    List<ItemStack?>? quickSlots,
    List<ItemStack?>? inventory,
  }) {
    return PlayerProgress(
      nombre: nombre ?? this.nombre,
      nivel: nivel ?? this.nivel,
      experiencia: experiencia ?? this.experiencia,
      experienciaParaSubir: experienciaParaSubir ?? this.experienciaParaSubir,
      faseActual: faseActual ?? this.faseActual,
      pantallaActual: pantallaActual ?? this.pantallaActual,
      statsBase: statsBase ?? this.statsBase,
      equipo: equipo ?? this.equipo,
    );
  }
}
