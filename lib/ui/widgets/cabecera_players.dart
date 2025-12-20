import 'package:flutter/material.dart';

class CabeceraPlayer extends StatelessWidget {
  final String nombre;
  final int nivel;
  final IconData icon;
  final bool alignRight;

  const CabeceraPlayer({
    super.key,
    required this.nombre,
    required this.nivel,
    required this.icon,
    this.alignRight = false,
  });

  @override
  Widget build(BuildContext context) {
    final content = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 36, color: Colors.white),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: alignRight
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Text(
              nombre,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Lv $nivel',
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
      ],
    );

    return alignRight
        ? Row(mainAxisAlignment: MainAxisAlignment.end, children: [content])
        : content;
  }
}
