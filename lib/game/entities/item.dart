import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';

class Item {
  final String id;
  final String nombre;
  final ItemType type;

  final List<InstantEffect> instantEffects;
  final List<EfectoClass> timedEffects;

  const Item({
    required this.id,
    required this.nombre,
    required this.type,
    this.instantEffects = const [],
    this.timedEffects = const [],
  });
}
