import 'package:flutter/material.dart';
import 'package:warden/data/models/player_progress_repository.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/factories/enemy_factory.dart';
import 'package:warden/game/game_controller.dart';
import 'package:warden/game/game_state.dart';
import 'package:warden/game/progress/player_progress.dart';

import 'package:warden/ui/screens/combate_screen.dart';
import 'package:warden/ui/screens/confirmacion.dart';
import 'package:warden/ui/widgets/boton_menu.dart';
import 'package:warden/ui/widgets/container_tengwar.dart';
import 'package:warden/ui/widgets/row_menu_cabecera.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  PlayerProgress? _progress;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final progress = await PlayerProgressRepository.load();
    setState(() => _progress = progress);
  }

  PlayerClass _buildPlayerFromProgress(PlayerProgress progress) {
    return PlayerClass(
      nombre: progress.nombre,
      nivel: progress.nivel,
      isAI: false,
      vida: 5000,
      maxvida: 5000,
      power: 1000,
      maxpower: 1000,
      time: 0,
      efectos: const [],
      instantEffects: [],
      comando: '',
      logs: const [],
      stats: progress.statsBase,
      comboChainTier: 0,
      comboChainType: null,
      inventory: [],
      quickSlots: [],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_progress == null) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContenedorNegro(),
            ContenedorTengwar(),
            // 🧙 CABECERA PLAYER
            PlayerMenuHeader(progress: _progress!),

            // ⚔️ COMBAT
            MenuButton(
              text: 'COMBAT',
              icon: Icons.local_fire_department,
              onTap: () async {
                final player = _buildPlayerFromProgress(_progress!);
                final enemy = EnemyFactory.createForPhase(
                  _progress!.faseActual,
                );

                final initialState = GameState(
                  jugador: player,
                  rival: enemy,
                  result: CombatResult.none,
                );

                final controller = GameController(
                  initialState,
                  progress: _progress!,
                );

                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CombateScreen(controller: controller),
                  ),
                );

                // 🔄 refrescar progreso al volver del combate
                _loadProgress();
              },
            ),

            MenuButton(
              text: 'INFORMATION',
              icon: Icons.menu_book,
              onTap: () {},
            ),

            MenuButton(
              text: 'CONFIGURATION',
              icon: Icons.settings,
              onTap: () {},
            ),

            MenuButton(
              text: 'RESET PLAYER',
              icon: Icons.reset_tv,
              onTap: () async {
                final nombre = await showResetNameDialog(context);

                // ⛔ cancelado o vacío
                if (nombre == null) return;

                await PlayerProgressRepository.reset(nombre);

                if (!mounted) return;

                await _loadProgress();
              },
            ),
            ContenedorTengwar(),
            ContenedorNegro(),
          ],
        ),
      ),
    );
  }
}
