import 'package:flutter/material.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/game_state.dart';

Widget buildEndOverlay(GameState state) {
  final isWin = state.result == CombatResult.playerWin;

  return Container(
    color: Colors.black.withAlpha(25),
    alignment: Alignment.center,
    child: Center(
      child: Text(
        isWin ? 'PLAYER WIN' : 'RIVAL WIN',
        style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: isWin ? Colors.greenAccent : Colors.redAccent,
          letterSpacing: 2,
        ),
      ),
    ),
  );
}
