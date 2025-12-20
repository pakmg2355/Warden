import 'package:flutter/material.dart';
import 'package:warden/game/progress/player_progress.dart';

class PlayerMenuHeader extends StatelessWidget {
  final PlayerProgress progress;

  const PlayerMenuHeader({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    final expRatio = progress.experiencia / progress.experienciaParaSubir;

    return Container(
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.only(left: 40, right: 40),
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
              Text(
                progress.nombre,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                'Lv. ${progress.nivel}',
                style: const TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // EXP
          Text(
            'Experience',
            style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
          ),
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

          const SizedBox(height: 6),

          Text(
            '${progress.experiencia} / ${progress.experienciaParaSubir}',
            style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
