import 'dart:async';

import 'package:flutter/material.dart';
import 'package:warden/game/controllers/game_controller.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/nodo.dart';
import 'package:warden/game/systems/music_systems.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/ui/widgets/barras/barra_estado.dart';
import 'package:warden/ui/widgets/barras/barra_stats.dart';
import 'package:warden/ui/widgets/contenedores/cabecera_player.dart';
import 'package:warden/ui/widgets/contenedores/container_combat_result.dart';
import 'package:warden/ui/widgets/botones/boton_combate.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';
import 'package:warden/ui/widgets/rows/row_quick_slot.dart';
import 'package:warden/ui/widgets/contenedores/contenedor_cuenta_atras.dart';
import 'package:warden/ui/widgets/rows/row_efectos.dart';
import 'package:warden/ui/widgets/rows/row_logs.dart';

class CombateScreen extends StatefulWidget {
  final GameController controller;
  final StoryNode nodo;

  const CombateScreen({
    super.key,
    required this.controller,
    required this.nodo,
  });

  @override
  State<CombateScreen> createState() => _CombateScreenState();
}

class _CombateScreenState extends State<CombateScreen> {
  late int contador;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    MusicSystem.play('ambient');
    widget.controller.updateStateInventory();

    contador = 3;
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        contador--;
        if (contador == 0) {
          widget.controller.startCombat();
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final barHeight = screenHeight / 20;

    if (contador > 0) {
      return Scaffold(body: ContenedorCuenta(cuenta: contador));
    } else {
      return Scaffold(
        body: ListenableBuilder(
          listenable: widget.controller,

          builder: (_, _) {
            final state = widget.controller.state;

            return Stack(
              children: [
                if (state.isFinished)
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CombatRewardContainer(
                          result: state.result,
                          playerLevel: state.jugador.nivel,
                          nodo: widget.nodo,
                        ),
                      ],
                    ),
                  ),
                if (!state.isFinished)
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ContenedorNegro(),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context, null);
                            },
                            child: const ContenedorVolver(),
                          ),

                          const Divider(),

                          Row(
                            children: [
                              Expanded(
                                child: CabeceraPlayer(
                                  nombre: state.jugador.nombre,
                                  nivel: state.jugador.nivel,
                                  stats: state.jugador.stats,
                                  plan: '',
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(5)),
                              Expanded(
                                child: CabeceraPlayer(
                                  nombre: state.rival.nombre,
                                  nivel: state.rival.nivel,
                                  stats: state.rival.stats,
                                  plan: widget.controller.aiState.plan.name,
                                ),
                              ),
                            ],
                          ),

                          const Divider(),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: StatBar(
                                    value: state.jugador.vida,
                                    maxValue: state.jugador.maxvida,
                                    fillColor: Colors.green,
                                    height: barHeight,
                                    label:
                                        '${state.jugador.vida}/${state.jugador.maxvida}',
                                  ),
                                ),
                                const Padding(padding: EdgeInsets.all(5)),
                                Expanded(
                                  child: StatBar(
                                    value: state.rival.vida,
                                    maxValue: state.rival.maxvida,
                                    height: barHeight,
                                    fillColor: Colors.green,
                                    label:
                                        '${state.rival.vida}/${state.rival.maxvida}',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: StatBar(
                                    value: state.jugador.power,
                                    maxValue: state.jugador.maxpower,
                                    fillColor: Colors.blue,
                                    height: barHeight,
                                    label:
                                        '${state.jugador.power}/${state.jugador.maxpower}',
                                  ),
                                ),
                                const Padding(padding: EdgeInsets.all(5)),
                                Expanded(
                                  child: StatBar(
                                    value: state.rival.power,
                                    maxValue: state.rival.maxpower,
                                    height: barHeight,
                                    fillColor: Colors.blue,
                                    label:
                                        '${state.rival.power}/${state.rival.maxpower}',
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: buildControlState(state.jugador),
                                ),
                                Expanded(child: buildControlState(state.rival)),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: EfectosRow(
                                    efectos: state.jugador.efectos,
                                  ),
                                ),
                                const Padding(padding: EdgeInsets.all(5)),
                                Expanded(
                                  child:
                                      /// EFECTOS RIVAL
                                      EfectosRow(efectos: state.rival.efectos),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),

                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: CombatLogView(log: state.jugador.logs),
                                ),
                                Expanded(
                                  child: CombatLogView(log: state.rival.logs),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),

                          QuickSlotRow(
                            items: state.jugador.quickSlots
                                .whereType<ItemStack>()
                                .toList(),
                            onTap: (index) {
                              widget.controller.useItem(index);
                            },
                          ),
                          const Divider(),
                          Container(
                            height: 100,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    child:
                                        (!state.jugador.isFeared &&
                                            !state.jugador.isDazed)
                                        ? CombatButton(
                                            text: '',
                                            color: colorSpear,
                                            icon: spearIcon,
                                            onPressed: () =>
                                                widget.controller.addInput('1'),
                                          )
                                        : buildControlState(state.jugador),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    child:
                                        (!state.jugador.isFeared &&
                                            !state.jugador.isDazed)
                                        ? CombatButton(
                                            text: '',
                                            color: colorShield,
                                            icon: shieldIcon,
                                            onPressed: () =>
                                                widget.controller.addInput('2'),
                                          )
                                        : buildControlState(state.jugador),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    child:
                                        (!state.jugador.isFeared &&
                                            !state.jugador.isDazed)
                                        ? CombatButton(
                                            text: '',
                                            color: colorFist,
                                            icon: fistIcon,
                                            onPressed: () =>
                                                widget.controller.addInput('3'),
                                          )
                                        : buildControlState(state.jugador),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CombatButtonExec(
                                    text: state.jugador.comando.replaceAll(
                                      'X',
                                      '',
                                    ),
                                    color: Colors.red.shade800,

                                    onPressed: () =>
                                        widget.controller.addInput('X'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ContenedorNegro(),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      );
    }
  }
}
