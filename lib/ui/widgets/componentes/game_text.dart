import 'package:flutter/material.dart';
import 'package:warden/game/helpers/escritura.dart';

class GameText {
  static TextStyle style({
    double size = 16,
    FontWeight weight = FontWeight.normal,
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: color,
      fontFamily: fontForPreferences(),
    );
  }

  static Widget text(
    String value, {
    double size = 20,
    FontWeight weight = FontWeight.normal,
    Color color = Colors.white,
    TextAlign align = TextAlign.left,
  }) {
    return SingleChildScrollView(
      child: Text(
        value,
        textAlign: align,
        style: style(size: size, weight: weight, color: color),
      ),
    );
  }
}
