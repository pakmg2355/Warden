import 'package:warden/data/persistence/player_equipo.dart';
import 'package:warden/data/persistence/player_inventory.dart';
import 'package:warden/data/persistence/player_progress.dart';
import 'package:warden/data/persistence/repositorios.dart';
import 'package:warden/game/entities/item.dart';
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
  StatsClass totalStats = getTotalStats(progress.statsBase, progress.equipo);
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
        ataque: 0,
        defensa: 0,
        curacion: 0,
        poder: 0,
        powerRegen: 0,
      ),
      baseStats: StatsClass(
        ataque: totalStats.ataque,
        defensa: totalStats.defensa,
        curacion: totalStats.curacion,
        poder: totalStats.poder,
        powerRegen: totalStats.powerRegen,
      ),
      equipo: PlayerEquipo(
        casco: ItemStack(itemId: 'vacio', quantity: 1),
        hombreras: ItemStack(itemId: 'vacio', quantity: 1),
        pechera: ItemStack(itemId: 'vacio', quantity: 1),
        pantalones: ItemStack(itemId: 'vacio', quantity: 1),
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
      ataque: 0,
      defensa: 0,
      curacion: 0,
      poder: 0,
      powerRegen: 0,
    ),
    baseStats: StatsClass(
      ataque: totalStats.ataque,
      defensa: totalStats.defensa,
      curacion: totalStats.curacion,
      poder: totalStats.poder,
      powerRegen: totalStats.powerRegen,
    ),
    equipo: PlayerEquipo(
      casco: ItemStack(itemId: 'vacio', quantity: 1),
      hombreras: ItemStack(itemId: 'vacio', quantity: 1),
      pechera: ItemStack(itemId: 'vacio', quantity: 1),
      pantalones: ItemStack(itemId: 'vacio', quantity: 1),
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

StatsClass getTotalStats(StatsClass base, PlayerEquipo equipo) {
  int sumaAtaque = base.ataque;
  int sumaDefensa = base.defensa;
  int sumaPoder = base.poder;
  int sumaCuracion = base.curacion;
  int sumaPowerRegen = base.powerRegen;

  sumaAtaque += equipo.casco?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.hombreras?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.pechera?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.pantalones?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.botas?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.guantes?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.capa?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.pendiente1?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.pendiente2?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.anillo1?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.anillo2?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.collar?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.amuleto?.item.stats.ataque ?? 0;
  sumaAtaque += equipo.hebilla?.item.stats.ataque ?? 0;

  sumaDefensa += equipo.casco?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.hombreras?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.pechera?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.pantalones?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.botas?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.guantes?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.capa?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.pendiente1?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.pendiente2?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.anillo1?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.anillo2?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.collar?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.amuleto?.item.stats.defensa ?? 0;
  sumaDefensa += equipo.hebilla?.item.stats.defensa ?? 0;

  sumaPoder += equipo.casco?.item.stats.poder ?? 0;
  sumaPoder += equipo.hombreras?.item.stats.poder ?? 0;
  sumaPoder += equipo.pechera?.item.stats.poder ?? 0;
  sumaPoder += equipo.pantalones?.item.stats.poder ?? 0;
  sumaPoder += equipo.botas?.item.stats.poder ?? 0;
  sumaPoder += equipo.guantes?.item.stats.poder ?? 0;
  sumaPoder += equipo.capa?.item.stats.poder ?? 0;
  sumaPoder += equipo.pendiente1?.item.stats.poder ?? 0;
  sumaPoder += equipo.pendiente2?.item.stats.poder ?? 0;
  sumaPoder += equipo.anillo1?.item.stats.poder ?? 0;
  sumaPoder += equipo.anillo2?.item.stats.poder ?? 0;
  sumaPoder += equipo.collar?.item.stats.poder ?? 0;
  sumaPoder += equipo.amuleto?.item.stats.poder ?? 0;
  sumaPoder += equipo.hebilla?.item.stats.poder ?? 0;

  sumaCuracion += equipo.casco?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.hombreras?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.pechera?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.pantalones?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.botas?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.guantes?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.capa?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.pendiente1?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.pendiente2?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.anillo1?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.anillo2?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.collar?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.amuleto?.item.stats.curacion ?? 0;
  sumaCuracion += equipo.hebilla?.item.stats.curacion ?? 0;

  sumaPowerRegen += equipo.casco?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.hombreras?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.pechera?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.pantalones?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.botas?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.guantes?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.capa?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.pendiente1?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.pendiente2?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.anillo1?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.anillo2?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.collar?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.amuleto?.item.stats.powerRegen ?? 0;
  sumaPowerRegen += equipo.hebilla?.item.stats.powerRegen ?? 0;

  return StatsClass(
    ataque: sumaAtaque,
    defensa: sumaDefensa,
    poder: sumaPoder,
    curacion: sumaCuracion,
    powerRegen: sumaPowerRegen,
  );
}
