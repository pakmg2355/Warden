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

class InfoPantalla {
  final String tipo;
  final String texto;
  final String botones;

  InfoPantalla({
    required this.tipo,
    required this.texto,
    required this.botones,
  });
}

class PantallaHistoria extends StatefulWidget {
  final PlayerProgress progress;
  const PantallaHistoria({super.key, required this.progress});

  @override
  State<PantallaHistoria> createState() => _PantallaHistoriaState();
}

class _PantallaHistoriaState extends State<PantallaHistoria> {
  StoryNode? nodo;
  late Future<PlayerClass> jugador;
  List<Choice> botones = const [];
  late PlayerProgress _progress;

  @override
  void initState() {
    super.initState();

    final raw = getNode(widget.progress.faseActual);

    jugador = buildPlayerFromProgress(widget.progress);
    _progress = widget.progress;

    if (raw != null) {
      final node = StoryNode.fromAny(raw);
      nodo = node;
      botones = node.botones;
    }
  }

  @override
  Widget build(BuildContext context) {
    final _texto = nodo?.texto ?? '';
    final _botones = botones;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
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
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(137, 136, 136, 136),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.amber.shade700, width: 1),
                ),

                child: GameText.text(_texto),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _botones.map((c) {
                  return MenuButton(
                    text: c.texto,
                    icon: c.texto == 'Pelear' ? spearIcon : Icons.call_split,
                    onTap: () async {
                      if (c.enemigo != 0) {
                        final ply = await jugador;
                        if (!mounted) return;

                        final enemy = EnemyFactory.createForPhase(c.enemigo);

                        final controller = GameController(
                          GameState(
                            jugador: ply,
                            rival: enemy,
                            result: CombatResult.none,
                          ),
                          progress: widget.progress,
                        );

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

                        if (!mounted) return;

                        // procesar resultado
                        if (resultado is Map && resultado['win'] == true) {
                          final raw = getNode(c.combateGana);
                          if (raw == null) return;
                          final next = StoryNode.fromAny(raw);
                          setState(() {
                            nodo = next;
                            botones = next.botones;
                            _progress = _progress.copyWith(
                              faseActual: c.combateGana,
                            );
                          });
                        } else {
                          final raw = getNode(c.combatePierde);
                          if (raw == null) return;
                          final next = StoryNode.fromAny(raw);
                          setState(() {
                            nodo = next;
                            botones = next.botones;
                            _progress = _progress.copyWith(
                              faseActual: c.combatePierde,
                            );
                          });
                        }
                      } else {
                        final raw = getNode(c.pantallaDestino);
                        if (c.pantallaDestino == -1) {
                          _progress = _progress.copyWith(
                            faseActual: c.pantallaDestino,
                          );
                          Navigator.pop(context, _progress);
                        }
                        if (raw == null) return;

                        final next = StoryNode.fromAny(raw);
                        setState(() {
                          nodo = next;
                          botones = next.botones;
                          _progress = _progress.copyWith(
                            faseActual: c.pantallaDestino,
                          );
                        });
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
    );
  }
}
