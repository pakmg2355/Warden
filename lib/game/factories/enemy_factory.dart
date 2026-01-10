import 'package:warden/data/persistence/player_equipo.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/gambits_repository/gambits_repository.dart';
import 'package:warden/game/systems/ai_systems.dart';

import 'package:warden/data/textos/diccionario.dart';

class EnemyFactory {
  static PlayerClass createForPhase(int phase) {
    final level = phase;

    final stats = _statsForLevel(level);

    if (level == 1) {
      return PlayerClass(
        nombre: _nameForLevel(level),
        nivel: level,
        isAI: true,
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 8000 + level * 300,
        maxvida: 8000 + level * 300,
        power: 3000 + level * 50,
        maxpower: 3000 + level * 50,
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
        vida: 100000 + level * 3000,
        maxvida: 100000 + level * 3000,
        power: 100000 + level * 3000,
        maxpower: 100000 + level * 3000,
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
      vida: 8000 + level * 300,
      maxvida: 8000 + level * 300,
      power: 3000 + level * 50,
      maxpower: 3000 + level * 50,
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
    final double scale = 1 + (level - 1) * 0.5;

    return StatsClass(
      ataque: (20 * scale).round(),
      defensa: (10 * scale).round(),
      poder: (5 * scale).round(),
      curacion: (5 * scale).round(),
      powerRegen: (5 * scale).round(),
    );
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
    return t('enemigo.nivel.50');
  }
}
