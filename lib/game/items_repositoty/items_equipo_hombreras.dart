import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoHombreras = {
  'hombrerasCueroBree': ItemDefinition(
    id: 'hombrerasCueroBree',
    nombre: 'Hombreras de Cuero de Bree',
    descripcion: t('item.hombrerasCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.hombreras,
    color: colorCueroBree,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 20,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
