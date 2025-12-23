import 'package:flutter/material.dart';
import 'package:warden/data/models/player_progress_repository.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/ui/widgets/boton_menu.dart';
import 'package:warden/ui/widgets/container_tengwar.dart';
import 'package:warden/ui/widgets/game_text.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  TextEditingController nombreController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ContenedorNegro(),

          Center(
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(137, 136, 136, 136),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.shade700, width: 1),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GameText.text(t('texto.aviso.reset')),
                  const SizedBox(height: 12),
                  TextField(
                    controller: nombreController,
                    autofocus: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuButton(
                        text: t('boton.aceptar'),
                        icon: Icons.check,
                        onTap: () async {
                          if (nombreController.text == '') return;

                          await PlayerProgressRepository.reset(
                            nombreController.text,
                          );

                          if (!mounted) return;

                          // ignore: use_build_context_synchronously
                          Navigator.pop(context, true);
                        },
                      ),
                      MenuButton(
                        text: t('boton.cancelar'),
                        icon: Icons.cancel,
                        onTap: () async {
                          Navigator.pop(context, true);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ContenedorNegro(),
        ],
      ),
    );
  }
}
