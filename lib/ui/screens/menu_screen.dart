import 'package:flutter/material.dart';
import 'package:warden/data/models/repositorios.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/enums/enums.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/factories/enemy_factory.dart';
import 'package:warden/game/controllers/game_controller.dart';
import 'package:warden/game/controllers/game_state.dart';
import 'package:warden/game/items/item_definition.dart';
import 'package:warden/game/progress/player_progress.dart';
import 'package:warden/game/systems/music_systems.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/ui/screens/about_screen.dart';
import 'package:warden/ui/screens/combate_screen.dart';
import 'package:warden/ui/screens/config_screen.dart';
import 'package:warden/ui/screens/gambir_info.dart';
import 'package:warden/ui/screens/reset_screen.dart';
import 'package:warden/ui/widgets/botones/boton_menu.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';
import 'package:warden/ui/widgets/rows/row_menu_cabecera.dart';

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
    MusicSystem.play('combat');
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
      vida: 2000 + progress.nivel * 300,
      maxvida: 2000 + progress.nivel * 300,
      power: 800 + progress.nivel * 50,
      maxpower: 800 + progress.nivel * 50,
      time: 0,
      efectos: const [],
      instantEffects: [],
      comando: '',
      logs: const [],
      stats: StatsClass(
        ataque: progress.statsBase.ataque + progress.nivel * 5,
        defensa: progress.statsBase.defensa + progress.nivel * 3,
        curacion: progress.statsBase.curacion + progress.nivel * 2,
        poder: progress.statsBase.poder + progress.nivel,
        powerRegen: progress.statsBase.powerRegen + progress.nivel,
      ),
      baseStats: StatsClass(
        ataque: progress.statsBase.ataque + progress.nivel * 5,
        defensa: progress.statsBase.defensa + progress.nivel * 3,
        curacion: progress.statsBase.curacion + progress.nivel * 2,
        poder: progress.statsBase.poder + progress.nivel,
        powerRegen: progress.statsBase.powerRegen + progress.nivel,
      ),
      comboChainTier: 0,
      comboChainType: null,
      inventory: [],
      quickSlots: [
        ItemStack(item: potionVida, quantity: 10),
        ItemStack(item: potionPower, quantity: 10),
      ],
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
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContenedorNegro(),
              // 🧙 CABECERA PLAYER
              PlayerMenuHeader(progress: _progress!),

              Column(
                children: [
                  MenuButton(
                    text: t('menu.combate'),
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
                    text: t('menu.gambit.info'),
                    icon: Icons.menu_book,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => GambitInfoScreen()),
                      );
                    },
                  ),

                  MenuButton(
                    text: t('menu.configuracion'),
                    icon: Icons.settings,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ConfigScreen()),
                      ).then((r) {
                        setState(() {});
                      });
                    },
                  ),

                  MenuButton(
                    text: t('menu.reset'),
                    icon: Icons.reset_tv,
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ResetScreen()),
                      ).then((res) {
                        _loadProgress();
                      });
                    },
                  ),

                  MenuButton(
                    text: t('texto.about'),
                    icon: Icons.reset_tv,
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AboutScreen()),
                      );
                    },
                  ),
                ],
              ),
              ContenedorNegro(),
            ],
          ),
        ),
      ),
    );
  }
}
