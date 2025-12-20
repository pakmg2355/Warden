import 'package:flutter/material.dart';
import 'package:warden/game/game_controller.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/ui/screens/menu_screen.dart';
import 'package:warden/ui/widgets/barra_estado.dart';
import 'package:warden/ui/widgets/barra_stats.dart';
import 'package:warden/ui/widgets/container_menu_player.dart';
import 'package:warden/ui/widgets/container_combat_result.dart';
import 'package:warden/ui/widgets/boton_combate.dart';
import 'package:warden/ui/widgets/container_tengwar.dart';
import 'package:warden/ui/widgets/row_efectos.dart';
import 'package:warden/ui/widgets/lista_logs.dart';

class CombateScreen extends StatelessWidget {
  final GameController controller;

  const CombateScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller,

        builder: (_, _) {
          final state = controller.state;

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ContenedorTengwar(),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Expanded(
                            child: CabeceraPlayer(
                              nombre: state.jugador.nombre,
                              nivel: state.jugador.nivel,
                              icon: Icons.person,
                            ),
                          ),
                          Expanded(
                            child: CabeceraPlayer(
                              nombre: state.rival.nombre,
                              nivel: state.rival.nivel,
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
                              height: MediaQuery.of(context).size.height / 20,
                              label:
                                  '${state.jugador.vida}/${state.jugador.maxvida}',
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(5)),
                          Expanded(
                            child: StatBar(
                              value: state.rival.vida,
                              maxValue: state.rival.maxvida,
                              height: MediaQuery.of(context).size.height / 20,
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
                              height: MediaQuery.of(context).size.height / 20,
                              label:
                                  '${state.jugador.power}/${state.jugador.maxpower}',
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(5)),
                          Expanded(
                            child: StatBar(
                              value: state.rival.power,
                              maxValue: state.rival.maxpower,
                              height: MediaQuery.of(context).size.height / 20,
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
                          Expanded(child: buildControlState(state.jugador)),
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
                            child: EfectosRow(efectos: state.jugador.efectos),
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
                          Expanded(child: CombatLogView(log: state.rival.logs)),
                        ],
                      ),
                    ),
                    const Divider(),

                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Expanded(
                            child: CombatButton(
                              text: '',
                              color: colorSpear,
                              icon: spearIcon,
                              onPressed: () => controller.addInput('1'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: CombatButton(
                              text: '',
                              color: colorShield,
                              icon: shieldIcon,
                              onPressed: () => controller.addInput('2'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: CombatButton(
                              text: '',
                              color: colorFist,
                              icon: fistIcon,
                              onPressed: () => controller.addInput('3'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            flex: 2,
                            child: CombatButtonExec(
                              text: state.jugador.comando.replaceAll('X', ''),
                              color: Colors.red.shade800,

                              onPressed: () => controller.addInput('X'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ContenedorTengwar(),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}
