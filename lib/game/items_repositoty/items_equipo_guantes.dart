import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoGuantes = {
  'guantesCueroBree': ItemDefinition(
    id: 'guantesCueroBree',
    nombre: 'Guantes de Cuero de Bree',
    descripcion: t('item.guantesCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.guantes,
    color: colorCueroBree,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 0,
      curacion: 0,
      powerRegen: 10,
    ),
  ),
};
