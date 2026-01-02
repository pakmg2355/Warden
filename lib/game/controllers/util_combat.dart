import 'package:warden/data/persistence/player_equipo.dart';
import 'package:warden/data/persistence/player_inventory.dart';
import 'package:warden/data/persistence/player_progress.dart';
import 'package:warden/data/persistence/repositorios.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/entities/stats.dart';

import 'package:warden/game/systems/ai_systems.dart';

Future<PlayerProgress> loadProgress() async {
  final progress = await PlayerProgressRepository.load();
  return progress;
}

Future<PlayerInventory> loadInventory() async {
  final inv = await PlayerInventoryStorage.load();
  return inv;
}

Future<PlayerClass> buildPlayerFromProgress(PlayerProgress progress) async {
  Future<PlayerInventory> inventario;
  inventario = loadInventory();
  inventario.then((inv) {
    return PlayerClass(
      nombre: progress.nombre,
      nivel: progress.nivel,
      isAI: false,
      vida: 2000 + progress.nivel * 300,
      maxvida: 2000 + progress.nivel * 300,
      power: 800 + progress.nivel * 50,
      maxpower: 800 + progress.nivel * 50,
      time: 0,
      efectos: const [],
      instantEffects: [],
      comando: '',
      logs: const [],
      stats: StatsClass(
        ataque: progress.statsBase.ataque + progress.nivel * 5,
        defensa: progress.statsBase.defensa + progress.nivel * 3,
        curacion: progress.statsBase.curacion + progress.nivel * 2,
        poder: progress.statsBase.poder + progress.nivel,
        powerRegen: progress.statsBase.powerRegen + progress.nivel,
      ),
      baseStats: StatsClass(
        ataque: progress.statsBase.ataque + progress.nivel * 5,
        defensa: progress.statsBase.defensa + progress.nivel * 3,
        curacion: progress.statsBase.curacion + progress.nivel * 2,
        poder: progress.statsBase.poder + progress.nivel,
        powerRegen: progress.statsBase.powerRegen + progress.nivel,
      ),
      equipo: PlayerEquipo(
        casco: null,
        hombreras: null,
        pechera: null,
        pantalones: null,
      ),
      comboChainTier: 0,
      comboChainType: null,
      inventory: inv.inventory,
      quickSlots: inv.quickSlots,
      planAtaqueIA: AIPlan('', []),
      planMixtoIA: AIPlan('', []),
      planDefensaIA: AIPlan('', []),
    );
  });

  return PlayerClass(
    nombre: progress.nombre,
    nivel: progress.nivel,
    isAI: false,
    vida: 2000 + progress.nivel * 300,
    maxvida: 2000 + progress.nivel * 300,
    power: 800 + progress.nivel * 50,
    maxpower: 800 + progress.nivel * 50,
    time: 0,
    efectos: const [],
    instantEffects: [],
    comando: '',
    logs: const [],
    stats: StatsClass(
      ataque: progress.statsBase.ataque + progress.nivel * 5,
      defensa: progress.statsBase.defensa + progress.nivel * 3,
      curacion: progress.statsBase.curacion + progress.nivel * 2,
      poder: progress.statsBase.poder + progress.nivel,
      powerRegen: progress.statsBase.powerRegen + progress.nivel,
    ),
    baseStats: StatsClass(
      ataque: progress.statsBase.ataque + progress.nivel * 5,
      defensa: progress.statsBase.defensa + progress.nivel * 3,
      curacion: progress.statsBase.curacion + progress.nivel * 2,
      poder: progress.statsBase.poder + progress.nivel,
      powerRegen: progress.statsBase.powerRegen + progress.nivel,
    ),
    equipo: PlayerEquipo(
      casco: null,
      hombreras: null,
      pechera: null,
      pantalones: null,
    ),
    comboChainTier: 0,
    comboChainType: null,
    inventory: [],
    quickSlots: [],
    planAtaqueIA: AIPlan('', []),
    planMixtoIA: AIPlan('', []),
    planDefensaIA: AIPlan('', []),
  );
}
