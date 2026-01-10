import 'package:flutter/material.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/helpers/iconos.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';
import 'package:warden/ui/widgets/componentes/row_stats_personaje..dart';

class CabeceraPlayer extends StatelessWidget {
  final String nombre;
  final int nivel;
  final StatsClass stats;
  final String plan;

  const CabeceraPlayer({
    super.key,
    required this.nombre,
    required this.nivel,
    required this.stats,
    required this.plan,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const Padding(padding: EdgeInsets.only(right: 5)),
            GameText.text('$nombre Lv$nivel '),
            iconDataForPlan(plan),
          ],
        ),
        Divider(),
        //rowWidgetStatsPlayer(stats),
        RowStatsPersonaje(stats: stats, nombreItem: '', size: 12),
      ],
    );
  }
}
