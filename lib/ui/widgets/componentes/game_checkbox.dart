import 'package:flutter/material.dart';
import 'package:warden/ui/widgets/componentes/game_text.dart';

class GameCheckbox extends StatelessWidget {
  final bool value;
  final VoidCallback onTap;
  final String label;

  const GameCheckbox({
    super.key,
    required this.value,
    required this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: value
              ? Colors.amber.withAlpha(40)
              : Colors.black.withAlpha(40),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: value ? Colors.amber : Colors.grey.shade600,
            width: 1,
          ),
        ),
        child: Wrap(
          children: [
            Icon(
              value ? Icons.check_circle : Icons.radio_button_unchecked,
              size: 18,
              color: value ? Colors.amber : Colors.grey,
            ),
            const SizedBox(width: 8),
            GameText.text(
              label,
              size: 14,
              color: value ? Colors.amber : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
