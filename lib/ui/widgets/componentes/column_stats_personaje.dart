import 'package:flutter/material.dart';
import 'package:warden/data/persistence/player_equipo.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/helpers/colores.dart';
import 'package:warden/game/helpers/iconos.dart';

class ColumnStatsPersonaje extends StatelessWidget {
  final StatsClass stats;
  const ColumnStatsPersonaje({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _statRow(
          Icon(
            iconDataForStat('ataque'),
            color: colorForStat('ataque'),
            size: 25,
          ),
          stats.ataque,
        ),
        _statRow(
          Icon(
            iconDataForStat('poder'),
            color: colorForStat('poder'),
            size: 25,
          ),
          stats.poder,
        ),
        _statRow(
          Icon(
            iconDataForStat('defensa'),
            color: colorForStat('defensa'),
            size: 25,
          ),
          stats.defensa,
        ),
        _statRow(
          Icon(
            iconDataForStat('curacion'),
            color: colorForStat('curacion'),
            size: 25,
          ),
          stats.curacion,
        ),
        _statRow(
          Icon(
            iconDataForStat('powerregen'),
            color: colorForStat('powerregen'),
            size: 25,
          ),
          stats.powerRegen,
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
