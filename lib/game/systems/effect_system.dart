import 'dart:math';

import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/logs.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/game_state.dart';
import 'package:warden/game/helpers/effect_calculator.dart';
import 'package:warden/game/helpers/helpers.dart';

class EffectSystem {
  static GameState update(GameState state) {
    final jugador = _applyEffects(state.jugador, state.rival);
    final rival = _applyEffects(state.rival, state.jugador);

    return state.copyWith(jugador: jugador, rival: rival);
  }

  static PlayerClass _applyEffects(PlayerClass target, PlayerClass source) {
    int vida = target.vida;
    int power = target.power;

    bool feared = false;
    bool dazed = false;

    final nuevosLogs = <CombatLogEntry>[];
    final activos = <EfectoClass>[];

    for (final ie in target.instantEffects) {
      vida += ie.vida;
      power += ie.power;

      if (ie.vida != 0 || ie.power != 0) {
        nuevosLogs.add(
          CombatLogEntry(
            source: ie.source,
            comando: 'INSTANT',
            type: EffectType.none,
            tier: 0,
            valor: ie.vida != 0 ? ie.vida : ie.power,
          ),
        );
      }
    }

    // ======================
    // 🔍 CLASIFICAR EFECTOS
    // ======================
    final fearStacks = target.efectos
        .where((e) => e.type == EffectType.fearStack)
        .toList();
    final dazeStacks = target.efectos
        .where((e) => e.type == EffectType.dazeStack)
        .toList();

    final fearStates = target.efectos
        .where((e) => e.type == EffectType.fear)
        .toList();
    final dazeStates = target.efectos
        .where((e) => e.type == EffectType.daze)
        .toList();

    final otherEffects = target.efectos
        .where(
          (e) => ![
            EffectType.fearStack,
            EffectType.dazeStack,
            EffectType.fear,
            EffectType.daze,
          ].contains(e.type),
        )
        .toList();

    final immune = isImmuneToFearOrDaze(target);

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
      final effectValue = applyStats(e, source.stats, target.stats);

      int vidaDelta = effectValue.vida;

      if (vidaDelta < 0) {
        final mitigation = calculateDamageMitigation(target);
        vidaDelta = (vidaDelta * (1 - mitigation)).round();
      }

      vida += vidaDelta;
      power += effectValue.power;

      if (vidaDelta != 0 || effectValue.power != 0) {
        nuevosLogs.add(
          CombatLogEntry(
            source: source.nombre,
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

    return target.copyWith(
      vida: vida.clamp(0, target.maxvida),
      power: power.clamp(0, target.maxpower),
      efectos: activos,
      instantEffects: const [],
      logs: nuevosLogs,
      feared: feared,
      dazed: dazed,
    );
  }
}
