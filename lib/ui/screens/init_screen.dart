import 'package:flutter/material.dart';
import 'package:warden/ui/screens/menu_screen.dart';
import 'package:warden/ui/widgets/container_tengwar.dart';

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
              ContenedorTengwar(),
              Column(
                children: [
                  Text('WARDEN GAMBITS SYSTEM', style: TextStyle(fontSize: 14)),
                  Text('', style: TextStyle(fontSize: 14)),
                  Text('BY', style: TextStyle(fontSize: 14)),
                  Text('', style: TextStyle(fontSize: 14)),
                  Text('OSCAR MARTÍNEZ GÓMEZ', style: TextStyle(fontSize: 14)),
                ],
              ),
              ContenedorTengwar(),
              ContenedorNegro(),
            ],
          ),
        ),
      ),
    );
  }
}
