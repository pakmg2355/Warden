import 'package:warden/game/entities/player.dart';
import 'package:warden/game/entities/stats.dart';

class EnemyFactory {
  static PlayerClass createForPhase(int phase) {
    final level = phase;

    final stats = _statsForLevel(level);

    return PlayerClass(
      nombre: _nameForLevel(level),
      nivel: level,
      isAI: true,
      vida: 2000 + level * 300,
      maxvida: 2000 + level * 300,
      power: 800 + level * 50,
      maxpower: 800 + level * 50,
      time: 0,
      efectos: const [],
      instantEffects: [],
      comando: '',
      logs: const [],
      stats: stats,
      comboChainTier: 0,
      comboChainType: null,
      inventory: [],
      quickSlots: [],
    );
  }

  static StatsClass _statsForLevel(int level) {
    return StatsClass(
      ataque: 20 + level * 5,
      defensa: 10 + level * 3,
      poder: 5 + level * 2,
      curacion: 2 + level,
      powerRegen: 1 + level,
    );
  }

  static String _nameForLevel(int level) {
    if (level < 5) return 'Orc Scout';
    if (level < 10) return 'Orc Warrior';
    if (level < 15) return 'Uruk-hai';
    if (level < 20) return 'Orc Captain';
    if (level < 30) return 'Troll';
    return 'Shadow of Mordor';
  }
}
