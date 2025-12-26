import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';

class ItemDatabase {
  static final Map<String, ItemDefinition> _items = {
    'potionvida': ItemDefinition(
      id: 'potionvida',
      nombre: 'Health Potion',
      type: ItemType.consumable,
      instantEffects: [
        InstantEffect(
          kind: InstantEffectKind.vidaPercent,
          value: 30,
          source: '',
        ),
      ],
    ),
    'potionpower': ItemDefinition(
      id: 'potionpower',
      nombre: 'Power Potion',
      type: ItemType.consumable,
      instantEffects: [
        InstantEffect(
          kind: InstantEffectKind.powerPercent,
          value: 10,
          source: '',
        ),
      ],
    ),
  };

  static ItemDefinition getById(String id) {
    final item = _items[id];
    if (item == null) {
      throw Exception('ItemDefinition no encontrado: $id');
    }
    return item;
  }
}
