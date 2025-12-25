import 'dart:math';

import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/logs.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/controllers/game_state.dart';
import 'package:warden/game/helpers/effect_calculator.dart';
import 'package:warden/game/helpers/effects.dart';

class EffectSystem {
  static GameState update(GameState state) {
    final jugador = _applyEffects(state.jugador, state.rival);
    final rival = _applyEffects(state.rival, state.jugador);

    return state.copyWith(jugador: jugador, rival: rival);
  }

  List<EfectoClass> uniqueEffects(Iterable<EfectoClass> efectos) {
    final seen = <String, EfectoClass>{};

    for (final e in efectos) {
      final key = '${e.type}-${e.nombre}-${e.tier}';
      seen.putIfAbsent(key, () => e);
    }

    return seen.values.toList();
  }

  static PlayerClass _applyEffects(PlayerClass t1, PlayerClass t2) {
    int vida = t1.vida;
    int power = t1.power;

    bool feared = false;
    bool dazed = false;

    final nuevosLogs = <CombatLogEntry>[];
    final activos = <EfectoClass>[];

    final efectosAplicables = t1.efectos.where((e) {
      return e.target == EffectTarget.self;
    }).toList();

    //EFECTOS INSTANTÁNEOS
    for (final ie in t1.instantEffects) {
      int delta = 0;

      switch (ie.kind) {
        case InstantEffectKind.vidaFlat:
          delta = ie.value;
          vida += delta;
          break;

        case InstantEffectKind.vidaPercent:
          delta = (t2.maxvida * ie.value / 100).round();
          vida += delta;
          break;

        case InstantEffectKind.powerFlat:
          delta = ie.value;
          power += delta;
          break;

        case InstantEffectKind.powerPercent:
          delta = (t2.maxpower * ie.value / 100).round();
          power += delta;
          break;
      }

      if (delta != 0) {
        nuevosLogs.add(
          CombatLogEntry(
            source: ie.source,
            comando: 'INSTANT',
            type: EffectType.none,
            tier: 0,
            valor: delta,
          ),
        );
      }
    }

    StatsClass modificadorEstados = StatsClass();
    // ======================
    // 🔍 CLASIFICAR EFECTOS
    // ======================
    final fearStacks = t1.efectos
        .where((e) => e.type == EffectType.fearStack)
        .toList();
    final dazeStacks = t1.efectos
        .where((e) => e.type == EffectType.dazeStack)
        .toList();

    final fearStates = t1.efectos
        .where((e) => e.type == EffectType.fear)
        .toList();
    final dazeStates = t1.efectos
        .where((e) => e.type == EffectType.daze)
        .toList();

    final statModAtaque = efectosAplicables
        .where((e) => e.statsMod.ataque != 0)
        .toList();
    final statModDefensa = efectosAplicables
        .where((e) => e.statsMod.defensa != 0)
        .toList();
    final statModPoder = efectosAplicables
        .where((e) => e.statsMod.poder != 0)
        .toList();
    final statModCuracion = efectosAplicables
        .where((e) => e.statsMod.curacion != 0)
        .toList();
    final statModPowerRegen = efectosAplicables
        .where((e) => e.statsMod.powerRegen != 0)
        .toList();
    final otherEffects = t1.efectos
        .where(
          (e) => ![
            EffectType.fearStack,
            EffectType.dazeStack,
            EffectType.fear,
            EffectType.daze,
          ].contains(e.type),
        )
        .toList();

    final immune = isImmuneToFearOrDaze(t1);

    //Aplicamos los modificadores de stats si hay efectos con modificadores de estados
    //Antes de aplicar los efectos
    //Si no hay ningún modificador, se guardará el source sin modificadores
    for (final e in statModAtaque) {
      modificadorEstados = modificadorEstados.copyWith(
        ataque: e.statsMod.ataque,
      );
    }
    for (final e in statModDefensa) {
      modificadorEstados = modificadorEstados.copyWith(
        defensa: modificadorEstados.defensa + e.statsMod.defensa,
      );
    }
    for (final e in statModPoder) {
      modificadorEstados = modificadorEstados.copyWith(
        poder: modificadorEstados.poder + e.statsMod.poder,
      );
    }
    for (final e in statModCuracion) {
      modificadorEstados = modificadorEstados.copyWith(
        curacion: modificadorEstados.curacion + e.statsMod.curacion,
      );
    }
    for (final e in statModPowerRegen) {
      modificadorEstados = modificadorEstados.copyWith(
        powerRegen: modificadorEstados.powerRegen + e.statsMod.powerRegen,
      );
    }

    // ======================
    // 😱 RESOLVER FEAR STACK
    // ======================
    if (fearStates.isEmpty && fearStacks.isNotEmpty) {
      final totalChance = fearStacks.fold<int>(0, (sum, e) => sum + e.fear);
      final roll = Random().nextInt(100);

      if (!immune && roll < totalChance) {
        // aplicar estado FEAR
        fearStacks.sort((a, b) => b.tier.compareTo(a.tier));
        final base = fearStacks.first;

        activos.add(
          EfectoClass(
            nombre: 'FEARED',
            tier: base.tier,
            target: base.target,
            type: EffectType.fear,
            duracionInicial: base.duracionInicial,
            statsMod: StatsClass(),
          ),
        );

        feared = true;
      } else if (!immune) {
        // mantener stacks si falla
        for (final e in fearStacks) {
          final next = e.tick();
          if (!next.isFinished) activos.add(next);
        }
      }
      // si es inmune → stacks se consumen (no se añaden)
    }

    // ======================
    // 😵 RESOLVER DAZE STACK
    // ======================
    if (dazeStates.isEmpty && dazeStacks.isNotEmpty) {
      final totalChance = dazeStacks.fold<int>(0, (sum, e) => sum + e.daze);
      final roll = Random().nextInt(100);

      if (!immune && roll < totalChance) {
        dazeStacks.sort((a, b) => b.tier.compareTo(a.tier));
        final base = dazeStacks.first;

        activos.add(
          EfectoClass(
            nombre: 'DAZED',
            tier: base.tier,
            target: base.target,
            type: EffectType.daze,
            duracionInicial: base.duracionInicial,
            statsMod: StatsClass(),
          ),
        );

        dazed = true;
      } else if (!immune) {
        for (final e in dazeStacks) {
          final next = e.tick();
          if (!next.isFinished) activos.add(next);
        }
      }
    }

    // ======================
    // ⛔ ESTADOS ACTIVOS
    // ======================
    for (final e in fearStates) {
      feared = true;
      final next = e.tick();
      if (!next.isFinished) activos.add(next);
    }

    for (final e in dazeStates) {
      dazed = true;
      final next = e.tick();
      if (!next.isFinished) activos.add(next);
    }

    // ======================
    // 💥 RESTO DE EFECTOS
    // ======================
    for (final e in otherEffects) {
      final effectValue = applyStats(e, t2.stats, t1.stats);

      int vidaDelta = effectValue.vida;

      if (vidaDelta < 0) {
        final mitigation = calculateDamageMitigation(t1);
        vidaDelta = (vidaDelta * (1 - mitigation)).round();
      }

      vida += vidaDelta;
      power += effectValue.power;

      if (vidaDelta != 0 || effectValue.power != 0) {
        nuevosLogs.add(
          CombatLogEntry(
            source: t2.nombre,
            comando: e.nombre,
            type: e.type,
            tier: e.tier,
            valor: vidaDelta != 0 ? vidaDelta : effectValue.power,
          ),
        );
      }

      final next = e.tick();
      if (!next.isFinished) activos.add(next);
    }

    final finalStats = calculateFinalStats(
      t1.baseStats,
      activos, // efectos tras tick()
    );

    return t1.copyWith(
      vida: vida.clamp(0, t1.maxvida),
      power: power.clamp(0, t1.maxpower),
      efectos: activos,
      instantEffects: const [],
      stats: finalStats,
      logs: nuevosLogs,
      feared: feared,
      dazed: dazed,
    );
  }
}
