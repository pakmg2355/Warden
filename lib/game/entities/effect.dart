import 'package:warden/game/entities/enums.dart';

class EfectoClass {
  final String nombre;
  final EffectType type;
  final EffectTarget target;
  final int tier;

  final int vida;
  final int power;
  final int escudo;
  final int fear;
  final int daze;
  final int feardazeinmune;
  final int multiplicador;

  final int duracionInicial;
  final int tiempo;

  const EfectoClass({
    required this.nombre,
    required this.type,
    required this.target,
    required this.tier,
    this.vida = 0,
    this.power = 0,
    this.escudo = 0,
    this.fear = 0,
    this.daze = 0,
    this.feardazeinmune = 0,
    this.multiplicador = 1,
    this.duracionInicial = 0,
    this.tiempo = 0,
  });

  /// Avanza el efecto un tick
  EfectoClass tick() {
    return copyWith(tiempo: tiempo + 1);
  }

  /// Resetea el efecto (cuando se reaplica)
  EfectoClass reset() {
    return copyWith(tiempo: 0);
  }

  /// ¿El efecto ya terminó?
  bool get isFinished => tiempo >= duracionInicial;

  EfectoClass copyWith({
    String? nombre,
    EffectType? type,
    EffectTarget? target,
    int? tier,
    int? vida,
    int? power,
    int? escudo,
    int? fear,
    int? daze,
    int? feardazeinmune,
    int? multiplicador,
    int? duracionInicial,
    int? tiempo,
  }) {
    return EfectoClass(
      nombre: nombre ?? this.nombre,
      type: type ?? this.type,
      target: target ?? this.target,
      tier: tier ?? this.tier,
      vida: vida ?? this.vida,
      power: power ?? this.power,
      escudo: escudo ?? this.escudo,
      fear: fear ?? this.fear,
      daze: daze ?? this.daze,
      multiplicador: multiplicador ?? this.multiplicador,
      feardazeinmune: feardazeinmune ?? this.feardazeinmune,
      duracionInicial: duracionInicial ?? this.duracionInicial,
      tiempo: tiempo ?? this.tiempo,
    );
  }
}

class InstantEffect {
  final InstantEffectKind kind;
  final int value;
  final String source;

  const InstantEffect({
    required this.kind,
    required this.value,
    required this.source,
  });
}
