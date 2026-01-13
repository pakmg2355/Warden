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
    final parts = <String>[];

    if (ataque > 0) parts.add('Ataque: +$ataque');
    if (defensa > 0) parts.add('Defensa: +$defensa');
    if (poder > 0) parts.add('Poder: +$poder');
    if (curacion > 0) parts.add('Curación: +$curacion');
    if (powerRegen > 0) parts.add('Reg. Poder: +$powerRegen');

    return parts.join(', ');
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
    if (e.statsMod.ataque > 0) {
      ataque = ataque + (ataque / e.statsMod.ataque).toInt();
    }
    if (e.statsMod.defensa > 0) {
      defensa = defensa + (defensa / e.statsMod.defensa).toInt();
    }
    if (e.statsMod.poder > 0) {
      poder = poder + (poder / e.statsMod.poder).toInt();
    }
    if (e.statsMod.curacion > 0) {
      curacion = curacion + (curacion / e.statsMod.curacion).toInt();
    }
    if (e.statsMod.powerRegen > 0) {
      powerRegen = powerRegen + (powerRegen / e.statsMod.powerRegen).toInt();
    }
  }

  return StatsClass(
    ataque: ataque,
    defensa: defensa,
    poder: poder,
    curacion: curacion,
    powerRegen: powerRegen,
  );
}
