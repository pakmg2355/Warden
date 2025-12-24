import 'package:flutter/material.dart';
import 'package:warden/game/enums/enums.dart';
import 'package:warden/game/entities/player.dart';

Widget buildControlState(PlayerClass p) {
  switch (p.controlState) {
    case ControlState.feared:
      return _stateChip(
        icon: Icons.visibility_off,
        text: 'FEAR',
        color: Colors.purple,
      );
    case ControlState.dazed:
      return _stateChip(
        icon: Icons.flash_off,
        text: 'DAZE',
        color: Colors.orange,
      );
    case ControlState.normal:
      return SizedBox.shrink();
  }
}

Widget _stateChip({
  required IconData icon,
  required String text,
  required Color color,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: color.withAlpha(25),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: color),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: color),
        const SizedBox(width: 4),
        Text(text),
      ],
    ),
  );
}
