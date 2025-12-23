import 'package:warden/game/enums/enums.dart';

class CombatLogEntry {
  final String source; // 'Jugador' / 'Rival'
  final String comando;
  final EffectType type;
  final int valor;
  final int tier;

  const CombatLogEntry({
    required this.source,
    required this.comando,
    required this.type,
    required this.valor,
    required this.tier,
  });
}
