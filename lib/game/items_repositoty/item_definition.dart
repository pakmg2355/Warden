import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/textos/diccionario.dart';

class ItemDatabase {
  static final Map<String, ItemDefinition> items = {
    'potionvida': ItemDefinition(
      id: 'potionvida',
      nombre: 'Health Potion',
      descripcion: t('item.potionvida.descripcion'),
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
      descripcion: t('item.potionpower.descripcion'),
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
    final item = items[id];
    if (item == null) {
      throw Exception('ItemDefinition no encontrado: $id');
    }
    return item;
  }
}
