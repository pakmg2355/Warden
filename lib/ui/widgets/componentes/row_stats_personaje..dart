import 'package:flutter/material.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/helpers/colores.dart';
import 'package:warden/game/helpers/iconos.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';

class RowStatsPersonaje extends StatelessWidget {
  final StatsClass? stats;
  final String? nombreItem;
  final double size;
  const RowStatsPersonaje({
    super.key,
    required this.stats,
    required this.nombreItem,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nombreItem != '' ? GameText.text(nombreItem ?? '') : SizedBox.shrink(),
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            border: BoxBorder.all(width: 0.5, color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _statRow(
                Icon(
                  iconDataForStat('ataque'),
                  color: colorForStat('ataque'),
                  size: size * 1.5,
                ),
                stats?.ataque ?? 0,
                size,
              ),
              _statRow(
                Icon(
                  iconDataForStat('poder'),
                  color: colorForStat('poder'),
                  size: size * 1.5,
                ),
                stats?.poder ?? 0,
                size,
              ),
              _statRow(
                Icon(
                  iconDataForStat('defensa'),
                  color: colorForStat('defensa'),
                  size: size * 1.5,
                ),
                stats?.defensa ?? 0,
                size,
              ),
              _statRow(
                Icon(
                  iconDataForStat('curacion'),
                  color: colorForStat('curacion'),
                  size: size * 1.5,
                ),
                stats?.curacion ?? 0,
                size,
              ),
              _statRow(
                Icon(
                  iconDataForStat('powerregen'),
                  color: colorForStat('powerregen'),
                  size: size * 1.5,
                ),
                stats?.powerRegen ?? 0,
                size,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _statRow(Icon icon, int value, double size) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 2),
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: Wrap(
      children: [
        Text(
          value.toString().padLeft(3, ' '),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: size),
        ),
        const SizedBox(width: 2),
        icon,
      ],
    ),
  );
}
