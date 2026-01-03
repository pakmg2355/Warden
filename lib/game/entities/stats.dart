import 'package:warden/game/entities/effect.dart';

class StatsClass {
  final int ataque;
  final int defensa;
  final int poder;
  final int curacion;
  final int powerRegen;

  const StatsClass({
    this.ataque = 0,
    this.defensa = 0,
    this.poder = 0,
    this.curacion = 0,
    this.powerRegen = 0,
  });

  Map<String, dynamic> toJson() {
    return {
      'ataque': ataque,
      'defensa': defensa,
      'poder': poder,
      'curacion': curacion,
      'powerRegen': powerRegen,
    };
  }

  @override
  String toString() {
    return 'StatClass('
        'ataque: $ataque, '
        'defensa: $defensa, '
        'poder: $poder, '
        'curacion: $curacion, '
        'powerRegen: $powerRegen '
        ')';
  }

  factory StatsClass.fromJson(Map<String, dynamic> json) {
    return StatsClass(
      ataque: json['ataque'],
      defensa: json['defensa'],
      poder: json['poder'],
      curacion: json['curacion'],
      powerRegen: json['powerRegen'],
    );
  }

  StatsClass copyWith({
    int? ataque,
    int? defensa,
    int? poder,
    int? curacion,
    int? powerRegen,
  }) {
    return StatsClass(
      ataque: ataque ?? this.ataque,
      defensa: defensa ?? this.defensa,
      poder: poder ?? this.poder,
      curacion: curacion ?? this.curacion,
      powerRegen: powerRegen ?? this.powerRegen,
    );
  }
}

StatsClass calculateFinalStats(StatsClass base, List<EfectoClass> efectos) {
  int ataque = base.ataque;
  int defensa = base.defensa;
  int poder = base.poder;
  int curacion = base.curacion;
  int powerRegen = base.powerRegen;

  for (final e in efectos.where((e) => e.isActive)) {
    ataque += e.statsMod.ataque;
    defensa += e.statsMod.defensa;
    poder += e.statsMod.poder;
    curacion += e.statsMod.curacion;
    powerRegen += e.statsMod.powerRegen;
  }

  return StatsClass(
    ataque: ataque,
    defensa: defensa,
    poder: poder,
    curacion: curacion,
    powerRegen: powerRegen,
  );
}
