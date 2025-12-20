import 'package:flutter/material.dart';
import 'package:warden/global/constants.dart';

class CombatIconsHelper {
  static Widget buildFromText(String text) {
    final icons = <Widget>[];

    for (final char in text.characters) {
      switch (char) {
        case '1':
          icons.add(Icon(spearIcon, color: colorSpear));
          break;
        case '2':
          icons.add(Icon(shieldIcon, color: colorShield));
          break;
        case '3':
          icons.add(Icon(fistIcon, color: colorFist));
          break;
        default:
          break;
      }
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: icons);
  }
}
