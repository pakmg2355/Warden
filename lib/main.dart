import 'package:flutter/material.dart';
import 'package:warden/ui/screens/init_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyGameApp());
}

class MyGameApp extends StatelessWidget {
  const MyGameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Warden',
      theme: ThemeData.dark(),
      home: InitScreen(),
    );
  }
}
