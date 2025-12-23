import 'package:flutter/material.dart';
import 'package:warden/ui/widgets/game_text.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData? icon;

  const MenuButton({
    super.key,
    required this.text,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade700, width: 2),
          boxShadow: const [
            BoxShadow(
              color: Colors.black87,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (icon != null) ...[
              Icon(icon, color: Colors.amberAccent),
              const SizedBox(width: 12),
            ],
            GameText.text(text),
          ],
        ),
      ),
    );
  }
}
