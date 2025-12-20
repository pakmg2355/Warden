import 'package:flutter/material.dart';

class StatBar extends StatelessWidget {
  final int value;
  final int maxValue;
  final double height;
  final Color backgroundColor;
  final Color fillColor;
  final String? label;

  const StatBar({
    super.key,
    required this.value,
    required this.maxValue,
    this.height = 20,
    this.backgroundColor = Colors.black54,
    this.fillColor = Colors.green,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final double percent = maxValue <= 0
        ? 0
        : (value / maxValue).clamp(0.0, 1.0);

    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        // Fondo
        Container(
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(height / 2),
            border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
          ),
        ),

        // Barra animada
        LayoutBuilder(
          builder: (context, constraints) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
              height: height,
              width: constraints.maxWidth * percent,
              decoration: BoxDecoration(
                color: fillColor,
                borderRadius: BorderRadius.circular(height / 2),
              ),
            );
          },
        ),

        // Texto
        if (label != null)
          Align(
            alignment: Alignment.center,
            child: Text(
              label!,
              style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.6,
                fontWeight: FontWeight.bold,
                shadows: const [
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 2,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
