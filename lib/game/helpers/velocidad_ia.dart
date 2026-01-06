import 'package:warden/game/entities/player.dart';

Duration calculateIaTickRate({required PlayerClass rival}) {
  final level = rival.nivel;

  if (level <= 3) {
    return const Duration(milliseconds: 500);
  } else if (level <= 6) {
    return const Duration(milliseconds: 450);
  } else if (level <= 10) {
    return const Duration(milliseconds: 400);
  } else if (level <= 15) {
    return const Duration(milliseconds: 350);
  } else {
    return const Duration(milliseconds: 300); // brutal
  }
}
