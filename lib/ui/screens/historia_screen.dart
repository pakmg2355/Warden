// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:warden/data/persistence/player_progress.dart';
import 'package:warden/game/controllers/game_controller.dart';
import 'package:warden/game/controllers/game_state.dart';
import 'package:warden/game/controllers/util_combat.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/nodo.dart';
import 'package:warden/game/entities/player.dart';
import 'package:warden/game/factories/enemy_factory.dart';
import 'package:warden/game/historia/pantallas.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/ui/screens/combate_screen.dart';
import 'package:warden/ui/widgets/botones/boton_menu.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';

class PantallaHistoria extends StatefulWidget {
  final PlayerProgress progress;
  const PantallaHistoria({super.key, required this.progress});

  @override
  State<PantallaHistoria> createState() => _PantallaHistoriaState();
}

class _PantallaHistoriaState extends State<PantallaHistoria>
    with SingleTickerProviderStateMixin {
  StoryNode? nodo;
  late Future<PlayerClass> jugador;
  List<Choice> botones = const [];
  late PlayerProgress _progress;

  // 🔹 NUEVO
  final ScrollController _scrollController = ScrollController();
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // 🔹 Fade animation
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeIn,
    );

    _fadeController.forward();

    StoryNode? raw = getNode(widget.progress.pantallaActual);
    jugador = buildPlayerFromProgress(widget.progress);
    _progress = widget.progress;

    if (raw != null) {
      nodo = raw;
      botones = raw.botones;
    }
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _cambiarNodo(StoryNode next, dynamic destino) {
    _fadeController.reset();

    setState(() {
      nodo = next;
      botones = next.botones;
      _progress = _progress.copyWith(pantallaActual: destino);
    });
    _scrollController.jumpTo(0);
    _fadeController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final _texto1 = nodo?.texto1 ?? '';
    final _texto2 = nodo?.texto2 ?? '';
    final _imagen = nodo?.imagen ?? '';
    final _botones = botones;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Column(
              children: [
                Column(
                  children: [
                    ContenedorNegro(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, _progress);
                      },
                      child: ContenedorVolver(),
                    ),
                  ],
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(137, 136, 136, 136),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.amber.shade700, width: 1),
                  ),
                  child: Column(
                    children: [
                      GameText.text(_texto1),
                      if (_imagen.isNotEmpty)
                        Image.asset('assets/img/$_imagen.jpg'),
                      const Padding(padding: EdgeInsets.all(5)),
                      GameText.text(_texto2),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Column(
                    children: _botones.map((c) {
                      return MenuButton(
                        text: c.texto,
                        icon: c.texto == 'Pelear'
                            ? spearIcon
                            : Icons.call_split,
                        onTap: () async {
                          if (c.enemigo != 0) {
                            final ply = await jugador;
                            if (!mounted) return;

                            final enemy = EnemyFactory.createForPhase(
                              c.enemigo!,
                            );

                            final controller = GameController(
                              GameState(
                                jugador: ply,
                                rival: enemy,
                                result: CombatResult.none,
                              ),
                              progress: widget.progress,
                            );

                            if (!mounted) return;

                            final resultado = await Navigator.push(
                              // ignore: use_build_context_synchronously
                              context,
                              MaterialPageRoute(
                                builder: (_) => CombateScreen(
                                  controller: controller,
                                  nodo: nodo!,
                                ),
                              ),
                            );

                            if (resultado is Map && resultado['win'] == true) {
                              final raw = getNode(c.combateGana!);
                              if (raw == null) return;
                              _cambiarNodo(raw, c.combateGana);
                            } else {
                              final raw = getNode(c.combatePierde!);
                              if (raw == null) return;
                              _cambiarNodo(raw, c.combatePierde);
                            }
                          } else {
                            if (c.pantallaDestino == 'FIN') {
                              _progress = _progress.copyWith(
                                pantallaActual: c.pantallaDestino,
                              );
                              Navigator.pop(context, _progress);
                              return;
                            }

                            final raw = getNode(c.pantallaDestino);
                            if (raw == null) return;

                            _cambiarNodo(raw, c.pantallaDestino);
                          }
                        },
                      );
                    }).toList(),
                  ),
                ),

                ContenedorNegro(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
