import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/logs.dart';
import 'package:warden/game/entities/player.dart';

class GameState {
  final PlayerClass jugador;
  final PlayerClass rival;
  final CombatResult result;

  const GameState({
    required this.jugador,
    required this.rival,
    required this.result,
  });

  bool get isFinished => result != CombatResult.none;

  GameState copyWith({
    PlayerClass? jugador,
    PlayerClass? rival,
    List<CombatLogEntry>? logPlayer,
    List<CombatLogEntry>? logRival,
    CombatResult? result,
  }) {
    return GameState(
      jugador: jugador ?? this.jugador,
      rival: rival ?? this.rival,
      result: result ?? this.result,
    );
  }
}
