import 'package:flutter/material.dart';
import 'package:warden/data/persistence/player_progress.dart';
import 'package:warden/game/controllers/util_combat.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';
import 'package:warden/ui/widgets/componentes/row_stats_personaje..dart';

class PlayerMenuHeader extends StatelessWidget {
  final PlayerProgress progress;

  const PlayerMenuHeader({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    final expRatio = progress.experiencia / progress.experienciaParaSubir;

    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(137, 136, 136, 136),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.amber.shade700, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nombre + nivel
          Row(
            children: [
              const Icon(Icons.person, color: Colors.amber),
              const SizedBox(width: 8),
              GameText.text(progress.nombre),
              const Spacer(),
              GameText.text('Lv. ${progress.nivel}'),
            ],
          ),

          const SizedBox(height: 12),

          // EXP
          GameText.text(t('experiencia')),
          const SizedBox(height: 6),

          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: expRatio.clamp(0, 1),
              minHeight: 10,
              backgroundColor: Colors.grey.shade800,
              valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
            ),
          ),

          GameText.text(
            '${progress.experiencia} / ${progress.experienciaParaSubir}',
          ),

          RowStatsPersonaje(
            nombreItem: '',
            stats: getTotalStats(progress.statsBase, progress.equipo),
            size: 15,
          ),
        ],
      ),
    );
  }
}
