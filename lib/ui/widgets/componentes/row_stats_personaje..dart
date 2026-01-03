import 'package:flutter/material.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/helpers/colores.dart';
import 'package:warden/game/helpers/iconos.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';

class RowStatsPersonaje extends StatelessWidget {
  final StatsClass? stats;
  final String? nombreItem;
  const RowStatsPersonaje({
    super.key,
    required this.stats,
    required this.nombreItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GameText.text(nombreItem ?? ''),
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
                  size: 25,
                ),
                stats?.ataque ?? 0,
              ),
              _statRow(
                Icon(
                  iconDataForStat('poder'),
                  color: colorForStat('poder'),
                  size: 25,
                ),
                stats?.poder ?? 0,
              ),
              _statRow(
                Icon(
                  iconDataForStat('defensa'),
                  color: colorForStat('defensa'),
                  size: 25,
                ),
                stats?.defensa ?? 0,
              ),
              _statRow(
                Icon(
                  iconDataForStat('curacion'),
                  color: colorForStat('curacion'),
                  size: 25,
                ),
                stats?.curacion ?? 0,
              ),
              _statRow(
                Icon(
                  iconDataForStat('powerregen'),
                  color: colorForStat('powerregen'),
                  size: 25,
                ),
                stats?.powerRegen ?? 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _statRow(Icon icon, int value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Wrap(
      children: [
        Text(
          value.toString().padLeft(3, ' '),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(width: 8),
        icon,
      ],
    ),
  );
}
