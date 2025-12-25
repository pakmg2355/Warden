import 'dart:async';

import 'package:flutter/material.dart';
import 'package:warden/game/controllers/game_controller.dart';
import 'package:warden/game/items/item_definition.dart';
import 'package:warden/game/systems/music_systems.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/ui/screens/menu_screen.dart';
import 'package:warden/ui/widgets/barras/barra_estado.dart';
import 'package:warden/ui/widgets/barras/barra_stats.dart';
import 'package:warden/ui/widgets/contenedores/container_menu_player.dart';
import 'package:warden/ui/widgets/contenedores/container_combat_result.dart';
import 'package:warden/ui/widgets/botones/boton_combate.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';
import 'package:warden/ui/widgets/componentes/quick_slot.dart';
import 'package:warden/ui/widgets/contenedores/contenedor_cuenta_atras.dart';
import 'package:warden/ui/widgets/rows/row_efectos.dart';
import 'package:warden/ui/widgets/componentes/lista_logs.dart';

class CombateScreen extends StatefulWidget {
  final GameController controller;

  const CombateScreen({super.key, required this.controller});

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

    contador = 3;
    timer = Timer.periodic(
      Duration(seconds: 1),
      (_) => setState(() {
        contador--;
      }),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (contador > 0) {
      return Scaffold(body: ContenedorCuenta(cuenta: contador));
    } else {
      return Scaffold(
        body: AnimatedBuilder(
          animation: widget.controller,

          builder: (_, _) {
            final state = widget.controller.state;

            return Stack(
              children: [
                if (state.isFinished)
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => MenuScreen(),
                        ),
                        ModalRoute.withName('/'),
                      );
                    },
                    child: buildEndOverlay(state),
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
                            child: ContenedorVolver(),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CabeceraPlayer(
                                    nombre: state.jugador.nombre,
                                    nivel: state.jugador.nivel,
                                    stats: state.jugador.stats,
                                    icon: Icons.person,
                                  ),
                                ),
                                Expanded(
                                  child: CabeceraPlayer(
                                    nombre: state.rival.nombre,
                                    nivel: state.rival.nivel,
                                    stats: state.rival.stats,
                                    icon: Icons.person_2,
                                    alignRight: true,
                                  ),
                                ),
                              ],
                            ),
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
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    label:
                                        '${state.jugador.vida}/${state.jugador.maxvida}',
                                  ),
                                ),
                                const Padding(padding: EdgeInsets.all(5)),
                                Expanded(
                                  child: StatBar(
                                    value: state.rival.vida,
                                    maxValue: state.rival.maxvida,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
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
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    label:
                                        '${state.jugador.power}/${state.jugador.maxpower}',
                                  ),
                                ),
                                const Padding(padding: EdgeInsets.all(5)),
                                Expanded(
                                  child: StatBar(
                                    value: state.rival.power,
                                    maxValue: state.rival.maxpower,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
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
                              children: [
                                Expanded(
                                  child: EfectosRow(
                                    efectos: state.jugador.efectos,
                                  ),
                                ),

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
                          Padding(
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
                                    child: CombatButton(
                                      text: '',
                                      color: colorSpear,
                                      icon: spearIcon,
                                      onPressed: () =>
                                          widget.controller.addInput('1'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    child: CombatButton(
                                      text: '',
                                      color: colorShield,
                                      icon: shieldIcon,
                                      onPressed: () =>
                                          widget.controller.addInput('2'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    child: CombatButton(
                                      text: '',
                                      color: colorFist,
                                      icon: fistIcon,
                                      onPressed: () =>
                                          widget.controller.addInput('3'),
                                    ),
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
