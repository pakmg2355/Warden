import 'package:flutter/material.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';
import 'package:warden/ui/widgets/rows/row_widget_stat.dart';

class CabeceraPlayer extends StatelessWidget {
  final String nombre;
  final int nivel;
  final StatsClass stats;

  const CabeceraPlayer({
    super.key,
    required this.nombre,
    required this.nivel,
    required this.stats,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GameText.text('$nombre Lv$nivel'),
        rowWidgetStatsPlayer(stats),
      ],
    );
  }
}
