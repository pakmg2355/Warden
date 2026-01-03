import 'package:warden/data/persistence/player_equipo.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/gambits_repository/gambits_repository.dart';
import 'package:warden/game/systems/ai_systems.dart';

import 'package:warden/game/textos/diccionario.dart';

class EnemyFactory {
  static PlayerClass createForPhase(int phase) {
    final level = phase;

    final stats = _statsForLevel(level);

    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),
        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 1) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 2) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 3) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 4) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 5) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 6) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 7) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 8) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 9) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 10) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 11) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 12) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 13) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 14) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 15) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 16) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 17) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 18) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 19) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 20) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 21) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 22) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 23) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 24) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 25) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 26) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 27) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 28) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 29) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 30) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 31) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 32) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 33) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 34) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 35) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 36) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 37) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 38) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 39) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 40) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 41) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 42) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 43) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 44) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 45) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 46) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 47) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 48) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 49) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }
    if (level == 50) {
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
        equipo: PlayerEquipo(
          casco: ItemStack(itemId: 'vacio', quantity: 1),
          hombreras: ItemStack(itemId: 'vacio', quantity: 1),
          pechera: ItemStack(itemId: 'vacio', quantity: 1),
          pantalones: ItemStack(itemId: 'vacio', quantity: 1),
        ),

        comando: '',
        logs: const [],
        baseStats: stats,
        stats: stats,
        comboChainTier: 0,
        comboChainType: null,
        inventory: [],
        quickSlots: [],
        planAtaqueIA: ataque1,
        planMixtoIA: mixto1,
        planDefensaIA: cura1,
      );
    }

    //PlayerClass si no entra en ningúna fase de arriba
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
      equipo: PlayerEquipo(
        casco: ItemStack(itemId: 'vacio', quantity: 1),
        hombreras: ItemStack(itemId: 'vacio', quantity: 1),
        pechera: ItemStack(itemId: 'vacio', quantity: 1),
        pantalones: ItemStack(itemId: 'vacio', quantity: 1),
      ),

      comando: '',
      logs: const [],
      baseStats: stats,
      stats: stats,
      comboChainTier: 0,
      comboChainType: null,
      inventory: [],
      quickSlots: [],
      planAtaqueIA: AIPlan('Ataque', [
        shieldMaster,
        spear1,
        spear2,
        spear3,
        spear4,
        spear5,
        power,
        fear1,
        fear2,
        fear3,
        fear4,
        fear5,
        spear1,
        spear2,
        spear3,
        spear4,
        spear5,
        power,
      ]),
      planMixtoIA: AIPlan('Mixto', [
        shieldMaster,
        shieldTactics,
        spear1,
        spear2,
        spear3,
        spear4,
        spear5,
        power,
        shield1,
        shield2,
        shield3,
        shield4,
        shield5,
        fear1,
        fear2,
        fear3,
        fear4,
        fear5,
        power,
      ]),
      planDefensaIA: AIPlan('Cura', [
        shieldMaster,
        shield1,
        shield2,
        shield3,
        shield4,
        shield5,
        power,
        spear1,
        spear2,
        spear3,
        spear4,
        spear5,
        shieldTactics,
        shield1,
        shield2,
        shield3,
        shield4,
        shield5,
        power,
      ]),
    );
  }

  static StatsClass _statsForLevel(int level) {
    switch (level) {
      case 1:
        return StatsClass(
          ataque: 15,
          defensa: 8,
          poder: 5,
          curacion: 3,
          powerRegen: 2,
        );
      case 2:
        return StatsClass(
          ataque: 20,
          defensa: 11,
          poder: 7,
          curacion: 4,
          powerRegen: 3,
        );
      case 3:
        return StatsClass(
          ataque: 25,
          defensa: 14,
          poder: 9,
          curacion: 5,
          powerRegen: 4,
        );
      case 4:
        return StatsClass(
          ataque: 30,
          defensa: 17,
          poder: 11,
          curacion: 6,
          powerRegen: 5,
        );
      case 5:
        return StatsClass(
          ataque: 35,
          defensa: 20,
          poder: 13,
          curacion: 7,
          powerRegen: 6,
        );

      case 6:
        return StatsClass(
          ataque: 40,
          defensa: 23,
          poder: 15,
          curacion: 8,
          powerRegen: 7,
        );
      case 7:
        return StatsClass(
          ataque: 45,
          defensa: 26,
          poder: 17,
          curacion: 9,
          powerRegen: 8,
        );
      case 8:
        return StatsClass(
          ataque: 50,
          defensa: 29,
          poder: 19,
          curacion: 10,
          powerRegen: 9,
        );
      case 9:
        return StatsClass(
          ataque: 55,
          defensa: 32,
          poder: 21,
          curacion: 11,
          powerRegen: 10,
        );
      case 10:
        return StatsClass(
          ataque: 60,
          defensa: 35,
          poder: 23,
          curacion: 12,
          powerRegen: 11,
        );

      case 11:
        return StatsClass(
          ataque: 65,
          defensa: 38,
          poder: 25,
          curacion: 13,
          powerRegen: 12,
        );
      case 12:
        return StatsClass(
          ataque: 70,
          defensa: 41,
          poder: 27,
          curacion: 14,
          powerRegen: 13,
        );
      case 13:
        return StatsClass(
          ataque: 75,
          defensa: 44,
          poder: 29,
          curacion: 15,
          powerRegen: 14,
        );
      case 14:
        return StatsClass(
          ataque: 80,
          defensa: 47,
          poder: 31,
          curacion: 16,
          powerRegen: 15,
        );
      case 15:
        return StatsClass(
          ataque: 85,
          defensa: 50,
          poder: 33,
          curacion: 17,
          powerRegen: 16,
        );

      case 16:
        return StatsClass(
          ataque: 90,
          defensa: 53,
          poder: 35,
          curacion: 18,
          powerRegen: 17,
        );
      case 17:
        return StatsClass(
          ataque: 95,
          defensa: 56,
          poder: 37,
          curacion: 19,
          powerRegen: 18,
        );
      case 18:
        return StatsClass(
          ataque: 100,
          defensa: 59,
          poder: 39,
          curacion: 20,
          powerRegen: 19,
        );
      case 19:
        return StatsClass(
          ataque: 105,
          defensa: 62,
          poder: 41,
          curacion: 21,
          powerRegen: 20,
        );
      case 20:
        return StatsClass(
          ataque: 110,
          defensa: 65,
          poder: 43,
          curacion: 22,
          powerRegen: 21,
        );

      case 21:
        return StatsClass(
          ataque: 115,
          defensa: 68,
          poder: 45,
          curacion: 23,
          powerRegen: 22,
        );
      case 22:
        return StatsClass(
          ataque: 120,
          defensa: 71,
          poder: 47,
          curacion: 24,
          powerRegen: 23,
        );
      case 23:
        return StatsClass(
          ataque: 125,
          defensa: 74,
          poder: 49,
          curacion: 25,
          powerRegen: 24,
        );
      case 24:
        return StatsClass(
          ataque: 130,
          defensa: 77,
          poder: 51,
          curacion: 26,
          powerRegen: 25,
        );
      case 25:
        return StatsClass(
          ataque: 135,
          defensa: 80,
          poder: 53,
          curacion: 27,
          powerRegen: 26,
        );

      case 26:
        return StatsClass(
          ataque: 140,
          defensa: 83,
          poder: 55,
          curacion: 28,
          powerRegen: 27,
        );
      case 27:
        return StatsClass(
          ataque: 145,
          defensa: 86,
          poder: 57,
          curacion: 29,
          powerRegen: 28,
        );
      case 28:
        return StatsClass(
          ataque: 150,
          defensa: 89,
          poder: 59,
          curacion: 30,
          powerRegen: 29,
        );
      case 29:
        return StatsClass(
          ataque: 155,
          defensa: 92,
          poder: 61,
          curacion: 31,
          powerRegen: 30,
        );
      case 30:
        return StatsClass(
          ataque: 160,
          defensa: 95,
          poder: 63,
          curacion: 32,
          powerRegen: 31,
        );

      case 31:
        return StatsClass(
          ataque: 165,
          defensa: 98,
          poder: 65,
          curacion: 33,
          powerRegen: 32,
        );
      case 32:
        return StatsClass(
          ataque: 170,
          defensa: 101,
          poder: 67,
          curacion: 34,
          powerRegen: 33,
        );
      case 33:
        return StatsClass(
          ataque: 175,
          defensa: 104,
          poder: 69,
          curacion: 35,
          powerRegen: 34,
        );
      case 34:
        return StatsClass(
          ataque: 180,
          defensa: 107,
          poder: 71,
          curacion: 36,
          powerRegen: 35,
        );
      case 35:
        return StatsClass(
          ataque: 185,
          defensa: 110,
          poder: 73,
          curacion: 37,
          powerRegen: 36,
        );

      case 36:
        return StatsClass(
          ataque: 190,
          defensa: 113,
          poder: 75,
          curacion: 38,
          powerRegen: 37,
        );
      case 37:
        return StatsClass(
          ataque: 195,
          defensa: 116,
          poder: 77,
          curacion: 39,
          powerRegen: 38,
        );
      case 38:
        return StatsClass(
          ataque: 200,
          defensa: 119,
          poder: 79,
          curacion: 40,
          powerRegen: 39,
        );
      case 39:
        return StatsClass(
          ataque: 205,
          defensa: 122,
          poder: 81,
          curacion: 41,
          powerRegen: 40,
        );
      case 40:
        return StatsClass(
          ataque: 210,
          defensa: 125,
          poder: 83,
          curacion: 42,
          powerRegen: 41,
        );

      case 41:
        return StatsClass(
          ataque: 215,
          defensa: 128,
          poder: 85,
          curacion: 43,
          powerRegen: 42,
        );
      case 42:
        return StatsClass(
          ataque: 220,
          defensa: 131,
          poder: 87,
          curacion: 44,
          powerRegen: 43,
        );
      case 43:
        return StatsClass(
          ataque: 225,
          defensa: 134,
          poder: 89,
          curacion: 45,
          powerRegen: 44,
        );
      case 44:
        return StatsClass(
          ataque: 230,
          defensa: 137,
          poder: 91,
          curacion: 46,
          powerRegen: 45,
        );
      case 45:
        return StatsClass(
          ataque: 235,
          defensa: 140,
          poder: 93,
          curacion: 47,
          powerRegen: 46,
        );

      case 46:
        return StatsClass(
          ataque: 240,
          defensa: 143,
          poder: 95,
          curacion: 48,
          powerRegen: 47,
        );
      case 47:
        return StatsClass(
          ataque: 245,
          defensa: 146,
          poder: 97,
          curacion: 49,
          powerRegen: 48,
        );
      case 48:
        return StatsClass(
          ataque: 250,
          defensa: 149,
          poder: 99,
          curacion: 50,
          powerRegen: 49,
        );
      case 49:
        return StatsClass(
          ataque: 255,
          defensa: 152,
          poder: 101,
          curacion: 51,
          powerRegen: 50,
        );
      case 50:
        return StatsClass(
          ataque: 260,
          defensa: 155,
          poder: 103,
          curacion: 52,
          powerRegen: 51,
        );

      default:
        return StatsClass();
    }
  }

  static String _nameForLevel(int level) {
    if (level == 1) return t('enemigo.nivel.1');
    if (level == 2) return t('enemigo.nivel.2');
    if (level == 3) return t('enemigo.nivel.3');
    if (level == 4) return t('enemigo.nivel.4');
    if (level == 5) return t('enemigo.nivel.5');
    if (level == 6) return t('enemigo.nivel.6');
    if (level == 7) return t('enemigo.nivel.7');
    if (level == 8) return t('enemigo.nivel.8');
    if (level == 9) return t('enemigo.nivel.9');
    if (level == 10) return t('enemigo.nivel.10');
    if (level == 11) return t('enemigo.nivel.11');
    if (level == 12) return t('enemigo.nivel.12');
    if (level == 13) return t('enemigo.nivel.13');
    if (level == 14) return t('enemigo.nivel.14');
    if (level == 15) return t('enemigo.nivel.15');
    if (level == 16) return t('enemigo.nivel.16');
    if (level == 17) return t('enemigo.nivel.17');
    if (level == 18) return t('enemigo.nivel.18');
    if (level == 19) return t('enemigo.nivel.19');
    if (level == 20) return t('enemigo.nivel.20');
    if (level == 21) return t('enemigo.nivel.21');
    if (level == 22) return t('enemigo.nivel.22');
    if (level == 23) return t('enemigo.nivel.23');
    if (level == 24) return t('enemigo.nivel.24');
    if (level == 25) return t('enemigo.nivel.25');
    if (level == 26) return t('enemigo.nivel.26');
    if (level == 27) return t('enemigo.nivel.27');
    if (level == 28) return t('enemigo.nivel.28');
    if (level == 29) return t('enemigo.nivel.29');
    if (level == 30) return t('enemigo.nivel.30');
    if (level == 31) return t('enemigo.nivel.31');
    if (level == 32) return t('enemigo.nivel.32');
    if (level == 33) return t('enemigo.nivel.33');
    if (level == 34) return t('enemigo.nivel.34');
    if (level == 35) return t('enemigo.nivel.35');
    if (level == 36) return t('enemigo.nivel.36');
    if (level == 37) return t('enemigo.nivel.37');
    if (level == 38) return t('enemigo.nivel.38');
    if (level == 39) return t('enemigo.nivel.39');
    if (level == 40) return t('enemigo.nivel.40');
    if (level == 41) return t('enemigo.nivel.41');
    if (level == 42) return t('enemigo.nivel.42');
    if (level == 43) return t('enemigo.nivel.43');
    if (level == 44) return t('enemigo.nivel.44');
    if (level == 45) return t('enemigo.nivel.45');
    if (level == 46) return t('enemigo.nivel.46');
    if (level == 47) return t('enemigo.nivel.47');
    if (level == 48) return t('enemigo.nivel.48');
    if (level == 49) return t('enemigo.nivel.49');
    if (level == 50) return t('enemigo.nivel.50');
    return 'Criatura Desconocida';
  }
}
