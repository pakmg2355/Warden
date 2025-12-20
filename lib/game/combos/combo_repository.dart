import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/enums.dart';

class ComboDefinition {
  final String id;
  final String sequence; // "123"
  final String name;
  final String description;

  final int powerCost;
  final List<EfectoClass> effects;

  const ComboDefinition({
    required this.id,
    required this.sequence,
    required this.name,
    required this.description,
    required this.powerCost,
    required this.effects,
  });
}

ComboDefinition? findComboBySequence(String sequence) {
  return listadoCombos.firstWhere(
    (c) => c.sequence == sequence,
    orElse: () => ComboDefinition(
      id: '',
      sequence: '',
      name: '',
      description: '',
      powerCost: 0,
      effects: [],
    ),
  );
}

List<ComboDefinition> listadoCombos = [
  ComboDefinition(
    id: 'basic_strike',
    sequence: '12',
    name: 'Spear Tier 1',
    description: 'Spear first combo',
    powerCost: 10,
    effects: [
      EfectoClass(
        nombre: 'Spear Tier 1',
        tier: 1,
        vida: -10,
        type: EffectType.damage,
        target: EffectTarget.enemy,
        duracionInicial: 10,
      ),
    ],
  ),
  ComboDefinition(
    id: 'advanced_strike',
    sequence: '121',
    name: 'Spear Tier 2',
    description: 'Spear second combo',
    powerCost: 30,
    effects: [
      EfectoClass(
        nombre: 'Spear Tier 2',
        tier: 2,
        vida: -30,
        type: EffectType.damage,
        target: EffectTarget.enemy,
        duracionInicial: 10,
      ),
    ],
  ),
  ComboDefinition(
    id: 'super_strike',
    sequence: '1212',
    name: 'Spear Tier 3',
    description: 'Spear thrist combo',
    powerCost: 70,
    effects: [
      EfectoClass(
        nombre: 'Spear Tier 3',
        tier: 3,
        vida: -70,
        type: EffectType.damage,
        target: EffectTarget.enemy,
        duracionInicial: 10,
      ),
    ],
  ),
  ComboDefinition(
    id: 'mega_strike',
    sequence: '12121',
    name: 'Spear Tier 4',
    description: 'Spear four combo',
    powerCost: 90,
    effects: [
      EfectoClass(
        nombre: 'Spear Tier 4',
        tier: 4,
        vida: -90,
        type: EffectType.damage,
        target: EffectTarget.enemy,
        duracionInicial: 10,
      ),
    ],
  ),

  ComboDefinition(
    id: 'basic_heal',
    sequence: '21',
    name: 'Shield Tier 1',
    description: 'Shield first combo',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Shield Tier 1',
        tier: 1,
        vida: 50,
        type: EffectType.heal,
        target: EffectTarget.self,
        duracionInicial: 10,
      ),
    ],
  ),
  ComboDefinition(
    id: 'advanced_heal',
    sequence: '212',
    name: 'Shield Tier 2',
    description: 'Shield second combo',
    powerCost: 100,
    effects: [
      EfectoClass(
        nombre: 'Shield Tier 2',
        tier: 2,
        vida: 100,
        type: EffectType.heal,
        target: EffectTarget.self,
        duracionInicial: 10,
      ),
    ],
  ),
  ComboDefinition(
    id: 'super_heal',
    sequence: '2121',
    name: 'Shield Tier 3',
    description: 'Shield thrist combo',
    powerCost: 150,
    effects: [
      EfectoClass(
        nombre: 'Shield Tier 3',
        tier: 3,
        vida: 150,
        type: EffectType.heal,
        target: EffectTarget.self,
        duracionInicial: 10,
      ),
    ],
  ),
  ComboDefinition(
    id: 'mega_heal',
    sequence: '21212',
    name: 'Shileld Tier 4',
    description: 'Shileld four combo',
    powerCost: 200,
    effects: [
      EfectoClass(
        nombre: 'Shileld Tier 4',
        tier: 4,
        vida: 200,
        type: EffectType.heal,
        target: EffectTarget.self,
        duracionInicial: 10,
      ),
    ],
  ),
  ComboDefinition(
    id: 'mega_power',
    sequence: '13121',
    name: 'Mega Power Recovery Tier 4',
    description: 'Shileld four combo',
    powerCost: 0,
    effects: [
      EfectoClass(
        nombre: 'Mega Power Recovery Tier 4',
        tier: 1,
        vida: -200,
        power: 200,
        type: EffectType.power,
        target: EffectTarget.self,
        duracionInicial: 10,
      ),
    ],
  ),
  ComboDefinition(
    id: 'Shield Master',
    sequence: '2132',
    name: 'Shield Master',
    description: 'Shield Master',
    powerCost: 0,
    effects: [
      EfectoClass(
        nombre: 'Mega Power Recovery Tier 4',
        tier: 1,
        escudo: 50,
        type: EffectType.shieldmaster,
        target: EffectTarget.self,
        duracionInicial: 60,
      ),
    ],
  ),
  ComboDefinition(
    id: 'Shield Tactics',
    sequence: '2131',
    name: 'Shield Tactics',
    description: 'Shield Tactics',
    powerCost: 0,
    effects: [
      EfectoClass(
        nombre: 'Mega Power Recovery Tier 4',
        tier: 1,
        feardazeinmune: 50,
        type: EffectType.shiteldtactics,
        target: EffectTarget.self,
        duracionInicial: 60,
      ),
    ],
  ),

  ComboDefinition(
    id: 'Fear Tier 1',
    sequence: '32',
    name: 'Fear Tier 1',
    description: 'Fear Tier 1',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Fear Tier 1',
        tier: 1,
        target: EffectTarget.enemy,
        type: EffectType.fearStack,
        daze: 5,
        duracionInicial: 10,
        tiempo: 0,
      ),
    ],
  ),
  ComboDefinition(
    id: 'Fear Tier 2',
    sequence: '323',
    name: 'Fear Tier 2',
    description: 'Fear Tier 2',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Fear Tier 2',
        tier: 2,
        target: EffectTarget.enemy,
        type: EffectType.fearStack,
        daze: 15,
        duracionInicial: 10,
        tiempo: 0,
      ),
    ],
  ),
  ComboDefinition(
    id: 'Fear Tier 3',
    sequence: '3232',
    name: 'Fear Tier 3',
    description: 'Fear Tier 3',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Fear Tier 1',
        tier: 3,
        target: EffectTarget.enemy,
        type: EffectType.fearStack,
        daze: 25,
        duracionInicial: 10,
        tiempo: 0,
      ),
    ],
  ),
  ComboDefinition(
    id: 'Fear Tier 4',
    sequence: '32323',
    name: 'Fear Tier 4',
    description: 'Fear Tier 4',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Fear Tier 4',
        tier: 4,
        target: EffectTarget.enemy,
        type: EffectType.fearStack,
        daze: 25,
        duracionInicial: 10,
        tiempo: 0,
      ),
    ],
  ),

  ComboDefinition(
    id: 'Daze Tier 1',
    sequence: '32',
    name: 'Daze Tier 1',
    description: 'Daze Tier 1',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Daze Tier 1',
        tier: 1,
        target: EffectTarget.enemy,
        type: EffectType.dazeStack,
        daze: 5,
        duracionInicial: 10,
        tiempo: 0,
      ),
    ],
  ),
  ComboDefinition(
    id: 'Daze Tier 2',
    sequence: '323',
    name: 'Daze Tier 2',
    description: 'Daze Tier 2',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Daze Tier 2',
        tier: 2,
        target: EffectTarget.enemy,
        type: EffectType.dazeStack,
        daze: 15,
        duracionInicial: 10,
        tiempo: 0,
      ),
    ],
  ),
  ComboDefinition(
    id: 'Daze Tier 3',
    sequence: '3232',
    name: 'Daze Tier 3',
    description: 'Daze Tier 3',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Daze Tier 1',
        tier: 3,
        target: EffectTarget.enemy,
        type: EffectType.dazeStack,
        daze: 25,
        duracionInicial: 10,
        tiempo: 0,
      ),
    ],
  ),
  ComboDefinition(
    id: 'Daze Tier 4',
    sequence: '3232',
    name: 'Daze Tier 4',
    description: 'Daze Tier 4',
    powerCost: 50,
    effects: [
      EfectoClass(
        nombre: 'Daze Tier 4',
        tier: 4,
        target: EffectTarget.enemy,
        type: EffectType.dazeStack,
        daze: 25,
        duracionInicial: 10,
        tiempo: 0,
      ),
    ],
  ),
];
