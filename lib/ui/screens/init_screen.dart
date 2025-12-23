import 'package:flutter/material.dart';
import 'package:warden/ui/screens/menu_screen.dart';
import 'package:warden/ui/widgets/container_tengwar.dart';
import 'package:warden/ui/widgets/game_text.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContenedorNegro(),
              Column(
                children: [
                  GameText.text('WARDEN GAMBIT SYSTEM', size: 20),
                  GameText.text('by', size: 20),
                  GameText.text('oscar martinez gomez', size: 20),
                ],
              ),
              ContenedorNegro(),
            ],
          ),
        ),
      ),
    );
  }
}
