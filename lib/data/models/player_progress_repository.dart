import 'package:shared_preferences/shared_preferences.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/progress/player_progress.dart';

class PlayerProgressRepository {
  static Future<PlayerProgress> load() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('nivel')) {
      return _defaultProgress('Rodamon');
    }

    return PlayerProgress(
      nombre: prefs.getString('nombre')!,
      nivel: prefs.getInt('nivel')!,
      experiencia: prefs.getInt('experiencia')!,
      experienciaParaSubir: prefs.getInt('expToLevel')!,
      faseActual: prefs.getInt('fase')!,
      statsBase: StatsClass(
        ataque: prefs.getInt('atk')!,
        defensa: prefs.getInt('def')!,
        poder: prefs.getInt('pow')!,
        curacion: prefs.getInt('heal')!,
        powerRegen: prefs.getInt('powr')!,
      ),
    );
  }

  static Future<void> save(PlayerProgress p) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setInt('nivel', p.nivel);
    await prefs.setString('nombre', p.nombre);
    await prefs.setInt('experiencia', p.experiencia);
    await prefs.setInt('expToLevel', p.experienciaParaSubir);
    await prefs.setInt('fase', p.faseActual);

    await prefs.setInt('atk', p.statsBase.ataque);
    await prefs.setInt('def', p.statsBase.defensa);
    await prefs.setInt('pow', p.statsBase.poder);
    await prefs.setInt('powr', p.statsBase.powerRegen);
    await prefs.setInt('heal', p.statsBase.curacion);
  }

  static Future<void> reset(String nombre) async {
    final prefs = await SharedPreferences.getInstance();

    // 1️⃣ Guardar nombre activo
    await prefs.setString('current_player_name', nombre);

    // 2️⃣ Guardar progreso inicial
    final progress = _defaultProgress(nombre);
    await save(progress);
  }

  static PlayerProgress _defaultProgress(String nombre) {
    return PlayerProgress(
      nombre: nombre,
      nivel: 1,
      experiencia: 0,
      experienciaParaSubir: 100,
      faseActual: 1,
      statsBase: StatsClass(
        ataque: 10,
        defensa: 5,
        poder: 3,
        curacion: 2,
        powerRegen: 1,
      ),
    );
  }
}
