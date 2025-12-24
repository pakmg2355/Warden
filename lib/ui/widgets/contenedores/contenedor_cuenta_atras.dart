import 'package:flutter/material.dart';

class ContenedorCuenta extends StatefulWidget {
  final int cuenta;
  const ContenedorCuenta({super.key, required this.cuenta});

  @override
  State<ContenedorCuenta> createState() => _ContenedorCuentaState();
}

class _ContenedorCuentaState extends State<ContenedorCuenta>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _scale = Tween<double>(
      begin: 0.6,
      end: 1.0,
    ).chain(CurveTween(curve: Curves.easeOutBack)).animate(_controller);

    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant ContenedorCuenta oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.cuenta != widget.cuenta) {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withAlpha(25),
      body: Center(
        child: ScaleTransition(
          scale: _scale,
          child: Text(
            widget.cuenta.toString(),
            style: TextStyle(
              fontSize: 120,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              shadows: [
                Shadow(blurRadius: 20, color: Colors.red.withAlpha(25)),
                Shadow(blurRadius: 40, color: Colors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
