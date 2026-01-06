import 'package:flutter/material.dart';
import 'package:warden/game/gambits_repository/gambits_repository.dart';
import 'package:warden/global/constants.dart';
import 'package:warden/ui/widgets/contenedores/container_tengwar.dart';
import 'package:warden/ui/widgets/componentes/gambitInfoCard.dart';

class GambitInfoScreen extends StatelessWidget {
  const GambitInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final combos = listadoCombos;

    return Scaffold(
      backgroundColor: colorFondo,

      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContenedorNegro(),
              InkWell(
                onTap: () {
                  Navigator.pop(context, true);
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
        ),
      ),
    );
  }
}
