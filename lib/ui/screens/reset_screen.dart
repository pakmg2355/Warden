import 'package:flutter/material.dart';
import 'package:warden/data/models/player_progress_repository.dart';
import 'package:warden/ui/widgets/boton_menu.dart';
import 'package:warden/ui/widgets/container_tengwar.dart';

class ResetScreen extends StatefulWidget {
  final String nombre;
  const ResetScreen({super.key, required this.nombre});

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
          ContenedorTengwar(),

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
                  const Text(
                    'This will erase all progress.\n\n'
                    'Enter the new player name:',
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: nombreController,
                    autofocus: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Nuevo nombre jugador',
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuButton(
                        text: 'ACEPTAR',
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
                        text: 'CANCELAR',
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
          ContenedorTengwar(),
          ContenedorNegro(),
        ],
      ),
    );
  }
}
