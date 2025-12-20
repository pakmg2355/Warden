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
  static CommandResolution? _resolveCommand(String comando) {
    switch (comando) {
      case '12':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Spear Tier 1',
              tier: 1,
              vida: -10,
              type: EffectType.damage,
              target: EffectTarget.enemy,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '11':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Spear Tier 10',
              tier: 1,
              vida: -500,
              type: EffectType.damage,
              target: EffectTarget.enemy,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '33':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Spear Tier 10',
              tier: 1,
              power: -500,
              type: EffectType.power,
              target: EffectTarget.self,
              duracionInicial: 10,
            ),
          ],
          powerCost: 400,
        );

      case '121':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Spear Tier 2',

              tier: 2,
              vida: -10,
              type: EffectType.damage,
              target: EffectTarget.enemy,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '1212':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Spear Tier 3',

              tier: 3,
              vida: -10,
              type: EffectType.damage,
              target: EffectTarget.enemy,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '12121':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Spear Tier 4',

              tier: 4,
              vida: -10,
              type: EffectType.damage,
              target: EffectTarget.enemy,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '13121':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Recover Power Tier 4',
              tier: 4,
              vida: -5,
              power: 5,
              type: EffectType.power,
              target: EffectTarget.self,
              duracionInicial: 30,
            ),
          ],
          powerCost: 40,
        );

      case '21':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Heal Tier 1',
              tier: 1,
              vida: 15,
              target: EffectTarget.self,
              type: EffectType.heal,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '212':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Heal Tier 2',
              tier: 2,
              vida: 15,
              target: EffectTarget.self,
              type: EffectType.heal,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '2121':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Hear Tier 3',
              tier: 3,
              vida: 15,
              target: EffectTarget.self,
              type: EffectType.heal,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '21212':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Hear Tier 4',
              tier: 4,
              vida: 15,
              target: EffectTarget.self,
              type: EffectType.heal,
              duracionInicial: 10,
            ),
          ],
          powerCost: 40,
        );

      case '2132':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Shield Master',

              tier: 1,
              target: EffectTarget.self,
              type: EffectType.shieldmaster,
              escudo: 50,
              duracionInicial: 30,
            ),
          ],
          powerCost: 40,
        );

      case '2131':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Shield Tactics',

              tier: 2,
              target: EffectTarget.self,
              type: EffectType.shiteldtactics,
              feardazeinmune: 50,
              duracionInicial: 30,
            ),
          ],
          powerCost: 40,
        );

      case '31':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Daze Tier 1',

              tier: 1,
              target: EffectTarget.enemy,
              type: EffectType.dazeStack,
              daze: 5,
              duracionInicial: 10,
              tiempo: 0,
            ),
          ],
          powerCost: 40,
        );

      case '313':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Daze Tier 2',

              tier: 2,
              target: EffectTarget.enemy,
              type: EffectType.dazeStack,
              daze: 15,
              duracionInicial: 10,
              tiempo: 0,
            ),
          ],
          powerCost: 40,
        );

      case '3131':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Daze Tier 3',

              tier: 3,
              target: EffectTarget.enemy,
              type: EffectType.dazeStack,
              daze: 25,
              duracionInicial: 10,
              tiempo: 0,
            ),
          ],
          powerCost: 40,
        );

      case '31313':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Daze Tier 4',

              tier: 4,
              target: EffectTarget.enemy,
              type: EffectType.dazeStack,
              daze: 35,
              duracionInicial: 10,
              tiempo: 0,
            ),
          ],
          powerCost: 40,
        );
      case '32':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Fear Tier 1',

              tier: 1,
              target: EffectTarget.enemy,
              type: EffectType.fearStack,
              fear: 5,
              duracionInicial: 10,
              tiempo: 0,
            ),
          ],
          powerCost: 40,
        );

      case '323':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Fear Tier 2',

              tier: 2,
              target: EffectTarget.enemy,
              type: EffectType.fearStack,
              fear: 15,
              duracionInicial: 10,
              tiempo: 0,
            ),
          ],
          powerCost: 40,
        );
      case '3232':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Fear Tier 3',

              tier: 3,
              target: EffectTarget.enemy,
              type: EffectType.fearStack,
              fear: 25,
              duracionInicial: 10,
              tiempo: 0,
            ),
          ],
          powerCost: 40,
        );

      case '32323':
        return CommandResolution(
          effects: [
            EfectoClass(
              nombre: 'Fear Tier 4',

              tier: 4,
              target: EffectTarget.enemy,
              type: EffectType.fearStack,
              fear: 35,
              duracionInicial: 10,
              tiempo: 0,
            ),
          ],
          powerCost: 40,
        );

      default:
        return null;
    }
  }
}

/// Resultado interno para no mutar entidades
class _CombatResult {
  final PlayerClass self;
  final PlayerClass target;

  const _CombatResult({required this.self, required this.target});
}
