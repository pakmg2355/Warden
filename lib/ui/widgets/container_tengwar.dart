import 'package:flutter/material.dart';

class ContenedorTengwar extends StatelessWidget {
  const ContenedorTengwar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/tengwar.png'),
          fit: BoxFit.fill,
        ),
      ),
      height: MediaQuery.of(context).size.height / 15,
    );
  }
}

class ContenedorNegro extends StatelessWidget {
  const ContenedorNegro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height / 30,
    );
  }
}
