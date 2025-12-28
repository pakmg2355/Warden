import 'package:flutter/material.dart';
import 'package:warden/game/helpers/combat_icon_helper.dart';

class CombatButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final IconData? icon;

  const CombatButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withAlpha(25),
            border: Border.all(color: color, width: 2),
          ),

          child: LayoutBuilder(
            builder: (context, constraints) {
              return FittedBox(
                fit: BoxFit.fitWidth,
                child: Icon(icon, color: color),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CombatButtonExec extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CombatButtonExec({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: const Color.fromARGB(30, 255, 255, 255), // fondo muy suave
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black.withAlpha(40)),
      ),
      child: InkWell(
        onTap: onPressed,
        child: CombatIconsHelper.buildFromText(text),
      ),
    );
  }
}
