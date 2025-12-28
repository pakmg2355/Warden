import 'package:warden/game/entities/effect.dart';
import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/textos/diccionario.dart';

class ItemDatabase {
  static final Map<String, ItemDefinition> items = {
    'potVida': ItemDefinition(
      id: 'potVida',
      nombre: 'Health Potion',
      descripcion: t('item.potVida.descripcion'),
      type: ItemType.consumable,
      minLevel: 1,
      instantEffects: [
        InstantEffect(
          kind: InstantEffectKind.vidaPercent,
          value: 30,
          source: '',
        ),
      ],
    ),
    'potPower': ItemDefinition(
      id: 'potPower',
      nombre: 'Power Potion',
      descripcion: t('item.potPower.descripcion'),
      type: ItemType.consumable,
      minLevel: 1,
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
