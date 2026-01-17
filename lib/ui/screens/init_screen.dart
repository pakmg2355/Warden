import 'package:flutter/material.dart';
import 'package:warden/data/textos/diccionario.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/ui/screens/menu_screen.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: InkWell(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (BuildContext context) => MenuScreen()),
            ModalRoute.withName('/'),
          );
        },
        child: Center(
          child: Container(
            color: colorFondo,
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GameText.text(t('titulo.warden.gambit.system'), size: 30),
                    GameText.text(t('titulo.by'), size: 30),
                    GameText.text(t('titulo.oscar.martinez.gomez'), size: 30),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
