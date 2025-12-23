import 'package:flutter/material.dart';
import 'package:warden/data/persistence/preferencias.dart';
import 'package:warden/game/enums/enums.dart';
import 'package:warden/main.dart';
import 'package:warden/ui/widgets/boton_menu.dart';
import 'package:warden/ui/widgets/container_tengwar.dart';
import 'package:warden/ui/widgets/game_checkbox.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  late bool idiomaEs;
  late bool idiomaEn;
  late bool escrituraTengwar;
  late bool escrituraTolkien;
  late bool temaDark;
  late bool temaWhite;

  @override
  void initState() {
    super.initState();

    idiomaEs = preferencesController.current.idioma!.name == 'es';
    idiomaEn = preferencesController.current.idioma!.name == 'en';
    escrituraTengwar =
        preferencesController.current.escritura!.name == 'tengwar';
    escrituraTolkien =
        preferencesController.current.escritura!.name == 'tolkien';
    temaDark = preferencesController.current.tema!.name == 'dark';
    temaWhite = preferencesController.current.tema!.name == 'white';
  }

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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GameCheckbox(
                          label: 'ES',
                          value: idiomaEs,
                          onTap: () {
                            setState(() {
                              idiomaEs = true;
                              idiomaEn = false;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: GameCheckbox(
                          label: 'EN',
                          value: idiomaEn,
                          onTap: () {
                            setState(() {
                              idiomaEn = true;
                              idiomaEs = false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GameCheckbox(
                          label: 'Tolkien',
                          value: escrituraTolkien,
                          onTap: () {
                            setState(() {
                              escrituraTolkien = true;
                              escrituraTengwar = false;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: GameCheckbox(
                          label: 'Tengwar',
                          value: escrituraTengwar,
                          onTap: () {
                            setState(() {
                              escrituraTengwar = true;
                              escrituraTolkien = false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GameCheckbox(
                          label: 'Dark',
                          value: temaDark,
                          onTap: () {
                            setState(() {
                              temaDark = true;
                              temaWhite = false;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: GameCheckbox(
                          label: 'White',
                          value: temaWhite,
                          onTap: () {
                            setState(() {
                              temaWhite = true;
                              temaDark = false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                  MenuButton(
                    text: 'GUARDAR',
                    icon: Icons.save,
                    onTap: () async {
                      Preferencias? preferencias;

                      preferencias = Preferencias(
                        idioma: idiomaEs ? Idioma.es : Idioma.en,
                        escritura: escrituraTengwar
                            ? Escritura.tengwar
                            : Escritura.tolkien,
                        tema: temaDark ? Tema.dark : Tema.white,
                      );
                      await preferencesController.update(preferencias);

                      if (!mounted) return;
                      // ignore: use_build_context_synchronously
                      Navigator.pop(context, true);
                    },
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
