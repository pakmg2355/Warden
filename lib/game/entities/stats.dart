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
