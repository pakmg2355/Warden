import 'package:flutter/material.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';
import 'package:warden/ui/widgets/rows/row_widget_stat.dart';

class CabeceraPlayer extends StatelessWidget {
  final String nombre;
  final int nivel;
  final StatsClass stats;
  final IconData icon;
  final bool alignRight;

  const CabeceraPlayer({
    super.key,
    required this.nombre,
    required this.nivel,
    required this.stats,
    required this.icon,
    this.alignRight = false,
  });

  @override
  Widget build(BuildContext context) {
    final contentI = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, size: 36, color: Colors.white),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameText.text('$nombre Lv$nivel'),
            rowWidgetStatsPlayer(stats),
          ],
        ),
      ],
    );
    final contentR = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameText.text('$nombre Lv$nivel'),
            rowWidgetStatsPlayer(stats),
          ],
        ),
        const SizedBox(width: 8),
        Icon(icon, size: 36, color: Colors.white),
      ],
    );

    return alignRight ? contentR : contentI;
  }
}
