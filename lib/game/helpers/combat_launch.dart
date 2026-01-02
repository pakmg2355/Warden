import 'package:flutter/material.dart';
import 'package:warden/data/persistence/player_progress.dart';
import 'package:warden/game/controllers/game_controller.dart';
import 'package:warden/game/controllers/game_state.dart';
import 'package:warden/game/controllers/util_combat.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/nodo.dart';
import 'package:warden/game/factories/enemy_factory.dart';
import 'package:warden/ui/screens/combate_screen.dart';

Future<void> launchCombat({
  required BuildContext context,
  required PlayerProgress progress,
}) async {
  final ply = await buildPlayerFromProgress(progress);
  final enemy = EnemyFactory.createForPhase(progress.faseActual);

  final controller = GameController(
    GameState(jugador: ply, rival: enemy, result: CombatResult.none),
    progress: progress,
  );

  await Navigator.push(
    // ignore: use_build_context_synchronously
    context,
    MaterialPageRoute(
      builder: (_) => CombateScreen(
        controller: controller,
        nodo: StoryNode(id: '', texto: '', botones: []),
      ),
    ),
  );
}
