import 'package:flutter/material.dart';

class ContenedorNegro extends StatelessWidget {
  const ContenedorNegro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height / 30,
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
            color: const Color.fromARGB(255, 51, 51, 51),
            height: MediaQuery.of(context).size.height / 30,
            child: Icon(Icons.keyboard_arrow_up_sharp),
          ),
        ),
      ],
    );
  }
}
