import 'package:flutter/material.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';

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
          children: [GameText.text(nombre), GameText.text('Lv $nivel')],
        ),
      ],
    );

    return alignRight
        ? Row(mainAxisAlignment: MainAxisAlignment.end, children: [content])
        : content;
  }
}
