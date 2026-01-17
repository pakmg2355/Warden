import 'package:flutter/material.dart';
import 'package:warden/game/controllers/util_combat.dart';
import 'package:warden/data/persistence/player_progress.dart';
import 'package:warden/game/helpers/combat_launch.dart';
import 'package:warden/game/systems/music_systems.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/global/variables.dart';
import 'package:warden/ui/screens/about_screen.dart';
import 'package:warden/ui/screens/config_screen.dart';
import 'package:warden/ui/screens/gambit_info.dart';
import 'package:warden/ui/screens/historia_screen.dart';
import 'package:warden/ui/screens/inventario_screen.dart';
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

  Future<void> _init() async {
    MusicSystem.play('menu');

    try {
      final pro = await loadProgress();

      jugadorGlobal = pro.nombre;

      if (!mounted) return;
      setState(() {
        _progress = pro;
      });
    } catch (e) {
      if (!mounted) return;
    }
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void dispose() {
    MusicSystem.stop(); // o pause()
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_progress == null) {
      return const Scaffold(
        backgroundColor: colorFondo,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: colorFondo,
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PlayerMenuHeader(progress: _progress!),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuButton(
                    text: 'MODO HISTORIA',
                    icon: Icons.history,
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              PantallaHistoria(progress: _progress!),
                        ),
                      ).then((newProgress) {
                        setState(() {
                          _progress = newProgress;
                          if (!mounted) return;
                          MusicSystem.play('menu');
                        });
                      });
                    },
                  ),

                  MenuButton(
                    text: t('menu.combate'),
                    icon: Icons.local_fire_department,
                    onTap: () async {
                      final pro = _progress;
                      if (pro == null) return;

                      await launchCombat(context: context, progress: pro);

                      if (!mounted) return;
                      MusicSystem.play('menu');

                      _progress = await loadProgress();
                      setState(() {});
                    },
                  ),

                  MenuButton(
                    text: t('menu.gambit.info'),
                    icon: Icons.menu_book,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => GambitInfoScreen()),
                      ).then((r) {
                        if (!mounted) return;
                        MusicSystem.play('menu');
                      });
                    },
                  ),

                  MenuButton(
                    text: t('menu.configuracion'),
                    icon: Icons.settings,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ConfigScreen()),
                      ).then((r) async {
                        if (!mounted) return;
                        MusicSystem.play('menu');

                        _progress = await loadProgress();
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
                        if (!mounted) return;
                        MusicSystem.play('menu');

                        loadProgress().then((pro) {
                          setState(() {
                            _progress = pro;
                          });
                        });
                      });
                    },
                  ),

                  MenuButton(
                    text: t('menu.inventario'),
                    icon: Icons.badge,
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => InventoryScreen(jugador: _progress!),
                        ),
                      ).then((res) {
                        if (!mounted) return;
                        MusicSystem.play('menu');

                        loadProgress().then((pro) {
                          setState(() {
                            _progress = pro;
                          });
                        });
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
                      ).then((r) {
                        if (!mounted) return;
                        MusicSystem.play('menu');
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
