import 'package:warden/game/gambits_repository/gambits_repository.dart';
import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';

ComboDefinition? findComboBySequence(String sequence) {
  return listadoCombos.firstWhere(
    (c) => c.sequence == sequence,
    orElse: () => ComboDefinition(
      id: '',
      sequence: '',
      name: '',
      description: '',
      type: EffectType.damage,
      tier: 0,
      powerCost: 0,
      effects: [],
    ),
  );
}

class ComboDefinition {
  final String id;
  final String sequence; // "123"
  final String name;
  final String description;
  final EffectType type;
  final int tier;
  final int powerCost;
  final List<EfectoClass> effects;

  const ComboDefinition({
    required this.id,
    required this.sequence,
    required this.name,
    required this.description,
    required this.type,
    required this.tier,
    required this.powerCost,
    required this.effects,
  });
}
