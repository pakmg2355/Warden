import 'package:flutter/material.dart';
import 'package:warden/data/models/repositorios.dart';
import 'package:warden/data/persistence/preferencias.dart';
import 'package:warden/game/enums/enums.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/main.dart';
import 'package:warden/ui/widgets/botones/boton_menu.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';
import 'package:warden/ui/widgets/componentes/game_checkbox.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';

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
  late bool musica;
  late bool efectos;

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

    musica = preferencesController.current.musica!;
    efectos = preferencesController.current.efectos!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GameText.text(t('texto.idioma')),
                      const SizedBox(width: 12),
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
                      const Divider(),
                      GameText.text(t('texto.escritura')),
                      const SizedBox(width: 12),
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
                      const Divider(),
                      GameText.text(t('texto.tema')),
                      const SizedBox(width: 12),
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
                        ],
                      ),
                      const Divider(),
                      GameText.text(t('texto.musicayefectos')),
                      const SizedBox(width: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: GameCheckbox(
                              label: 'Música',
                              value: musica,
                              onTap: () {
                                setState(() {
                                  musica = !musica;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: GameCheckbox(
                              label: 'Efectos',
                              value: efectos,
                              onTap: () {
                                setState(() {
                                  efectos = !efectos;
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),
                      MenuButton(
                        text: t('boton.guardar'),
                        icon: Icons.save,
                        onTap: () async {
                          Preferencias? preferencias;

                          preferencias = Preferencias(
                            idioma: idiomaEs ? Idioma.es : Idioma.en,
                            escritura: escrituraTengwar
                                ? Escritura.tengwar
                                : Escritura.tolkien,
                            tema: temaDark ? Tema.dark : Tema.white,
                            musica: musica,
                            efectos: efectos,
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

              ContenedorNegro(),
            ],
          ),
        ),
      ),
    );
  }
}
