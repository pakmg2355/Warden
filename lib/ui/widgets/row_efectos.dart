import 'package:flutter/material.dart';

import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/helpers/helpers.dart';

class EfectosRow extends StatelessWidget {
  final List<EfectoClass> efectos;

  const EfectosRow({super.key, required this.efectos});

  IconData _iconDataForEffect(EffectType type) {
    switch (type) {
      case EffectType.damage:
        return Icons.fireplace_outlined;
      case EffectType.heal:
        return Icons.healing_outlined;
      case EffectType.power:
        return Icons.bolt_outlined;
      case EffectType.shieldmaster:
      case EffectType.shiteldtactics:
        return Icons.shield_outlined;
      case EffectType.fear:
        return Icons.waves_outlined;
      case EffectType.daze:
        return Icons.cyclone_outlined;
      case EffectType.fearStack:
        return Icons.waves_outlined;
      case EffectType.dazeStack:
        return Icons.cyclone_outlined;
      case EffectType.none:
        return Icons.cyclone_outlined;
    }
  }

  Widget _buildEffectBadge(EfectoClass e) {
    final baseColor = colorForEffect(e);
    final progress = 1 - (e.tiempo / e.duracionInicial).clamp(0.0, 1.0);

    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: baseColor.withAlpha(40),
        border: Border.all(color: baseColor.withAlpha(200), width: 2),
        boxShadow: [
          BoxShadow(
            color: baseColor.withAlpha(80),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          /// ICONO
          Icon(_iconDataForEffect(e.type), size: 18, color: baseColor),

          /// PROGRESO CIRCULAR
          Positioned.fill(
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 4,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation(baseColor.withAlpha(180)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (efectos.isEmpty) {
      return const SizedBox(height: 38);
    }

    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(30, 255, 255, 255), // fondo muy suave
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black.withAlpha(40)),
      ),
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: efectos.map(_buildEffectBadge).toList(),
      ),
    );
  }
}
