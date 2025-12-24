import 'package:flutter/material.dart';
import 'package:warden/game/controllers/preferences_controller.dart';
import 'package:warden/ui/screens/init_screen.dart';

final preferencesController = PreferencesController();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await preferencesController.load();
  runApp(MyGameApp());
}

class MyGameApp extends StatelessWidget {
  const MyGameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Warden Gambit System',
      theme: ThemeData.dark(),
      home: InitScreen(),
    );
  }
}
