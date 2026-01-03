import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoPantalones = {
  'pantalonesCueroBree': ItemDefinition(
    id: 'pantalonesCueroBree',
    nombre: 'Pantalones de Cuero de Bree',
    descripcion: t('item.pantalonesCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pantalones,
    color: colorCueroBree,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 0,
      powerRegen: 20,
    ),
  ),
};
