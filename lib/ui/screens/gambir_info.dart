import 'package:flutter/material.dart';
import 'package:warden/game/combos/combo_repository.dart';
import 'package:warden/game/systems/music_systems.dart';
import 'package:warden/ui/widgets/container_tengwar.dart';
import 'package:warden/ui/widgets/gambitInfoCard.dart';

class GambitInfoScreen extends StatelessWidget {
  const GambitInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final combos = listadoCombos;
    MusicSystem.play('music_gambits');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ContenedorNegro(),
          InkWell(
            onTap: () {
              Navigator.pop(context, null);
            },
            child: ContenedorVolver(),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: combos
                    .map((combo) => ComboInfoCard(combo: combo))
                    .toList(),
              ),
            ),
          ),

          ContenedorNegro(),
        ],
      ),
    );
  }
}
