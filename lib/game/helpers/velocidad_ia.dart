import 'package:warden/game/entities/player.dart';

Duration calculateIaTickRate({required PlayerClass rival}) {
  final level = rival.nivel;

  if (level <= 3) {
    return const Duration(milliseconds: 1000);
  } else if (level <= 6) {
    return const Duration(milliseconds: 900);
  } else if (level <= 10) {
    return const Duration(milliseconds: 700);
  } else if (level <= 15) {
    return const Duration(milliseconds: 500);
  } else {
    return const Duration(milliseconds: 350); // brutal
  }
}
