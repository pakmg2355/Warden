import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/logs.dart';
import 'package:warden/game/entities/stats.dart';

class PlayerClass {
  final String nombre;
  final int nivel;
  final bool isAI;
  final int maxvida;
  final int vida;
  final int maxpower;
  final int power;
  final int time;
  final List<EfectoClass> efectos;
  final List<InstantEffect> instantEffects;
  final String comando;
  final List<CombatLogEntry> logs;
  final StatsClass stats;
  final List<ItemConsumible> inventory;
  final List<ItemConsumible?> quickSlots;

  const PlayerClass({
    required this.nombre,
    required this.nivel,
    required this.isAI,
    required this.vida,
    required this.maxvida,
    required this.power,
    required this.time,
    required this.maxpower,
    required this.efectos,
    required this.instantEffects,
    required this.comando,
    required this.logs,
    required this.stats,
    required this.inventory,
    required this.quickSlots,
  });

  bool get isFeared => efectos.any((e) => e.type == EffectType.fear);

  bool get isDazed => efectos.any((e) => e.type == EffectType.daze);

  ControlState get controlState {
    if (isFeared) return ControlState.feared;
    if (isDazed) return ControlState.dazed;
    return ControlState.normal;
  }

  PlayerClass copyWith({
    String? nombre,
    int? nivel,
    bool? isAI,
    int? vida,
    int? maxvida,
    int? power,
    bool? feared,
    bool? dazed,
    int? time,
    int? maxpower,
    List<EfectoClass>? efectos,
    List<InstantEffect>? instantEffects,
    String? comando,
    List<CombatLogEntry>? logs,
    StatsClass? stats,
    List<ItemConsumible>? inventory,
    List<ItemConsumible?>? quickSlots,
  }) {
    return PlayerClass(
      nombre: nombre ?? this.nombre,
      nivel: nivel ?? this.nivel,
      isAI: isAI ?? this.isAI,
      vida: vida ?? this.vida,
      maxvida: maxvida ?? this.maxvida,
      power: power ?? this.power,
      time: time ?? this.time,
      maxpower: maxpower ?? this.maxpower,
      efectos: efectos ?? this.efectos,
      instantEffects: instantEffects ?? this.instantEffects,
      comando: comando ?? this.comando,
      logs: logs ?? this.logs,
      stats: stats ?? this.stats,
      inventory: inventory ?? this.inventory,
      quickSlots: quickSlots ?? this.quickSlots,
    );
  }
}
