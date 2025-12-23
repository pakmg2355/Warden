import 'package:flutter/material.dart';
import 'package:warden/game/enums/enums.dart';
import 'package:warden/game/game_state.dart';
import 'package:warden/ui/widgets/game_text.dart';

Widget buildEndOverlay(GameState state) {
  final isWin = state.result == CombatResult.playerWin;

  return Container(
    color: Colors.black.withAlpha(25),
    alignment: Alignment.center,
    child: Center(child: GameText.text(isWin ? 'PLAYER WIN' : 'RIVAL WIN')),
  );
}
