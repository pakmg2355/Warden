import 'package:warden/game/entities/item.dart';
import 'package:warden/data/items/items_repositoty/items_equipo.dart';
import 'package:warden/data/items/items_repositoty/items_pociones.dart';

class ItemDatabase {
  static final Map<String, ItemDefinition> items = {
    ...itemsPociones,
    ...itemsEquipo,
  };

  static ItemDefinition getById(String id) {
    final item = items[id];
    if (item == null) {
      throw Exception('ItemDefinition no encontrado: $id');
    }
    return item;
  }
}
