import 'package:warden/game/entities/combo.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';

import '../controllers/game_state.dart';
import '../entities/player.dart';

class CommandResolution {
  final List<EfectoClass> effects;
  final int powerCost;

  const CommandResolution({required this.effects, required this.powerCost});
}

class ComboApplyResult {
  final List<EfectoClass> efectos;

  const ComboApplyResult({required this.efectos});
}

class CombatSystem {
  /// Se llama en cada tick del game loop
  static GameState update(GameState state) {
    if (state.isFinished) return state;

    var jugador = state.jugador;
    var rival = state.rival;

    final resJugador = _processPlayer(jugador, rival);
    jugador = resJugador.self;
    rival = resJugador.target;

    final resRival = _processPlayer(rival, jugador);
    rival = resRival.self;
    jugador = resRival.target;

    return state.copyWith(jugador: jugador, rival: rival);
  }

  static _CombatResult _processPlayer(PlayerClass self, PlayerClass enemy) {
    if (!self.comando.endsWith('X')) {
      return _CombatResult(self: self, target: enemy);
    }

    if ((self.power <= 0) || (self.comando.length > 6)) {
      return _CombatResult(
        self: self.copyWith(comando: ''),
        target: enemy,
      );
    }

    final sequence = self.comando.replaceAll('X', '');
    final combo = _resolveCommand(sequence);

    PlayerClass newSelf = self.copyWith(comando: '');
    PlayerClass newEnemy = enemy;

    if (combo == null || combo.effects.isEmpty) {
      return _CombatResult(
        self: newSelf.copyWith(comboChainTier: 0, comboChainType: null),
        target: newEnemy,
      );
    }

    // 💥 PAGAR POWER
    newSelf = newSelf.copyWith(
      instantEffects: [
        ...newSelf.instantEffects,
        InstantEffect(
          kind: InstantEffectKind.powerFlat,
          value: -combo.powerCost,
          source: self.nombre,
        ),
      ],
    );

    // 🔗 CALCULAR CHAIN (UNA VEZ)
    int newChainTier = 0;
    int multiplicador = 1;

    final bool continuesChain =
        self.comboChainType == combo.type &&
        combo.tier == self.comboChainTier + 1;

    if (continuesChain) {
      newChainTier = combo.tier;
      multiplicador = (1.3 * combo.tier * combo.tier).round();
    } else if (combo.tier == 1) {
      newChainTier = 1;
      multiplicador = 1;
    } else {
      // ❌ combo fuera de orden → rompe cadena
      newChainTier = 0;
      multiplicador = 1;
    }

    // ⚔️ APLICAR EFECTOS
    for (final e in combo.effects) {
      final efectoConMulti = e.copyWith(multiplicador: multiplicador);

      if (e.target == EffectTarget.self) {
        newSelf = newSelf.copyWith(
          efectos: _addOrRefreshEffect(newSelf.efectos, efectoConMulti),
        );
      } else {
        newEnemy = newEnemy.copyWith(
          efectos: _addOrRefreshEffect(newEnemy.efectos, efectoConMulti),
        );
      }
    }

    // ✅ ACTUALIZAR CHAIN EN EL PLAYER
    newSelf = newSelf.copyWith(
      comboChainTier: newChainTier,
      comboChainType: combo.type,
    );

    return _CombatResult(self: newSelf, target: newEnemy);
  }

  static List<EfectoClass> _addOrRefreshEffect(
    List<EfectoClass> efectos,
    EfectoClass nuevo,
  ) {
    bool refreshed = false;

    final nuevosEfectos = efectos.map((e) {
      if (e.type == nuevo.type && e.tier == nuevo.tier) {
        refreshed = true;
        return e.reset();
      }
      return e;
    }).toList();

    if (!refreshed) {
      nuevosEfectos.add(nuevo);
    }

    return nuevosEfectos;
  }

  /// Traduce un comando en un efecto
  static ComboDefinition? _resolveCommand(String comando) {
    return findComboBySequence(comando.toUpperCase().trim());
  }
}

/// Resultado interno para no mutar entidades
class _CombatResult {
  final PlayerClass self;
  final PlayerClass target;

  const _CombatResult({required this.self, required this.target});
}
