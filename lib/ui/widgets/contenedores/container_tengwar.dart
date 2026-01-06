import 'package:flutter/material.dart';
import 'package:warden/global/constants.dart';

class ContenedorNegro extends StatelessWidget {
  const ContenedorNegro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: colorFondo,
          height: MediaQuery.of(context).size.height / 20,
        ),
      ],
    );
  }
}

class ContenedorVolver extends StatelessWidget {
  const ContenedorVolver({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: colorFondo,
              borderRadius: BorderRadius.circular(12),
              border: BoxBorder.all(
                width: 0.5,
                color: const Color.fromARGB(255, 87, 87, 87),
              ),
            ),
            height: MediaQuery.of(context).size.height / 20,
            child: Icon(
              Icons.exit_to_app,
              color: const Color.fromARGB(255, 87, 87, 87),
            ),
          ),
        ),
      ],
    );
  }
}
