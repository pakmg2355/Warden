import 'package:flutter/material.dart';
import 'package:warden/global/constants.dart';

class CombatIconsHelper {
  static Widget _buildIcon({
    required IconData icon,
    required Color color,
    double size = 32,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withAlpha(25), // fondo suave
        border: Border.all(color: color, width: 2),
      ),
      child: Icon(icon, size: size, color: color),
    );
  }

  static Widget buildFromText(String text) {
    // ignore: unnecessary_null_comparison
    if (text == null || text.isEmpty) {
      return const SizedBox.shrink();
    }

    final icons = <Widget>[];

    for (final char in text.split('')) {
      switch (char) {
        case '1':
          icons.add(_buildIcon(icon: spearIcon, color: colorSpear));
          break;
        case '2':
          icons.add(_buildIcon(icon: shieldIcon, color: colorShield));
          break;
        case '3':
          icons.add(_buildIcon(icon: fistIcon, color: colorFist));
          break;
      }
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: icons);
  }
}
