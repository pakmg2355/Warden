import 'package:warden/data/persistence/player_equipo.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/logs.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/systems/ai_systems.dart';

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
  final PlayerEquipo? equipo;
  final String comando;
  final List<CombatLogEntry> logs;
  final StatsClass stats;
  final StatsClass baseStats;
  final int comboChainTier;
  final EffectType? comboChainType;
  final List<ItemStack?> inventory;
  final List<ItemStack?> quickSlots;
  final AIPlan planAtaqueIA;
  final AIPlan planMixtoIA;
  final AIPlan planDefensaIA;

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
    required this.equipo,
    required this.comando,
    required this.logs,
    required this.stats,
    required this.baseStats,
    required this.comboChainTier,
    required this.comboChainType,
    required this.inventory,
    required this.quickSlots,
    required this.planAtaqueIA,
    required this.planMixtoIA,
    required this.planDefensaIA,
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
    PlayerEquipo? equipo,
    String? comando,
    List<CombatLogEntry>? logs,
    StatsClass? baseStats,
    StatsClass? stats,
    int? comboChainTier,
    EffectType? comboChainType,
    List<ItemStack?>? inventory,
    List<ItemStack?>? quickSlots,
    AIPlan? planAtaqueIA,
    AIPlan? planMixtoIA,
    AIPlan? planDefensaIA,
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
      equipo: equipo ?? this.equipo,
      comando: comando ?? this.comando,
      logs: logs ?? this.logs,
      stats: stats ?? this.stats,
      baseStats: baseStats ?? this.baseStats,
      comboChainTier: comboChainTier ?? this.comboChainTier,
      comboChainType: comboChainType ?? this.comboChainType,
      inventory: inventory ?? this.inventory,
      quickSlots: quickSlots ?? this.quickSlots,
      planAtaqueIA: planAtaqueIA ?? this.planAtaqueIA,
      planMixtoIA: planMixtoIA ?? this.planMixtoIA,
      planDefensaIA: planDefensaIA ?? this.planDefensaIA,
    );
  }
}
