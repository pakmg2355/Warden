import 'package:warden/game/combos/combo_repository.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';

import '../game_state.dart';
import '../entities/player.dart';

class CommandResolution {
  final List<EfectoClass> effects;
  final int powerCost;

  const CommandResolution({required this.effects, required this.powerCost});
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
    // 1️⃣ Si no hay EXEC → no resolvemos

    if (!self.comando.endsWith('X')) {
      return _CombatResult(self: self, target: enemy);
    }

    if (self.power <= 0) {
      return _CombatResult(
        self: self.copyWith(comando: ''),
        target: enemy,
      );
    }

    // 2️⃣ Extraemos secuencia
    final sequence = self.comando.replaceAll('X', '');

    // 3️⃣ Resolvemos comando → LISTA de efectos
    final efectos = _resolveCommand(sequence);

    // 4️⃣ Limpiamos comando
    PlayerClass newSelf = self.copyWith(comando: '');
    PlayerClass newEnemy = enemy;

    if (efectos == null || efectos.effects.isEmpty) {
      return _CombatResult(self: newSelf, target: newEnemy);
    }

    // pagar coste almacenado en CommanodResolution
    newSelf = newSelf.copyWith(
      instantEffects: [
        ...newSelf.instantEffects,
        InstantEffect(power: -efectos.powerCost, source: self.nombre),
      ],
    );

    // 5️⃣ Repartimos efectos según target
    for (final e in efectos.effects) {
      if (e.target == EffectTarget.self) {
        newSelf = newSelf.copyWith(
          efectos: _addOrRefreshEffect(newSelf.efectos, e),
        );
      } else {
        newEnemy = newEnemy.copyWith(
          efectos: _addOrRefreshEffect(newEnemy.efectos, e),
        );
      }
    }

    return _CombatResult(self: newSelf, target: newEnemy);
  }

  static List<EfectoClass> _addOrRefreshEffect(
    List<EfectoClass> efectos,
    EfectoClass nuevo,
  ) {
    // 1️⃣ Contar tiers activos inferiores de la misma rama
    final tiersActivos = efectos
        .where((e) => e.type == nuevo.type && e.tier < nuevo.tier)
        .map((e) => e.tier)
        .toSet();

    // 2️⃣ Comprobar si están TODOS los anteriores
    final bool comboCompleto = tiersActivos.length == nuevo.tier - 1;

    final int multiplicador = (comboCompleto || nuevo.tier == 4)
        ? nuevo.tier
        : 1;

    bool refreshed = false;

    final nuevosEfectos = efectos.map((e) {
      // 3️⃣ Refresh del mismo efecto (misma rama + tier)
      if (e.type == nuevo.type && e.tier == nuevo.tier) {
        refreshed = true;
        return e.reset();
      }
      return e;
    }).toList();

    // 4️⃣ Añadir efecto nuevo (con multiplicador aplicado)
    if (!refreshed) {
      nuevosEfectos.add(nuevo.copyWith(multiplicador: multiplicador));
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
