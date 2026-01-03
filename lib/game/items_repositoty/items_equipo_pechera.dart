import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoPecheras = {
  'pecheraCueroBree': ItemDefinition(
    id: 'pecheraCueroBree',
    nombre: 'Pechera de Cuero de Bree',
    descripcion: t('item.pecheraCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.pechera,
    color: colorCueroBree,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 0,
      curacion: 20,
      powerRegen: 0,
    ),
  ),
};
