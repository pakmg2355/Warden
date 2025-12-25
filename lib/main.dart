import 'package:flutter/material.dart';
import 'package:warden/game/controllers/preferences_controller.dart';
import 'package:warden/game/systems/music_systems.dart';
import 'package:warden/ui/screens/init_screen.dart';

final preferencesController = PreferencesController();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await preferencesController.load();
  runApp(const MyGameApp());
}

class MyGameApp extends StatefulWidget {
  const MyGameApp({super.key});

  @override
  State<MyGameApp> createState() => _MyGameAppState();
}

class _MyGameAppState extends State<MyGameApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        MusicSystem.resumeIfNeeded();
        break;

      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
        MusicSystem.pause();
        break;

      case AppLifecycleState.detached:
        MusicSystem.stop();
        break;

      case AppLifecycleState.hidden:
        MusicSystem.stop();
        break;
    }
  }

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
