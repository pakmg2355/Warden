import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoCapas = {
  'capaCueroBree': ItemDefinition(
    id: 'capaCueroBree',
    nombre: 'Capa de Cuero de Bree',
    descripcion: t('item.capaCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.capa,
    color: colorCueroBree,
    minLevel: 2,
    stats: StatsClass(
      ataque: 0,
      defensa: 10,
      poder: 10,
      curacion: 20,
      powerRegen: 0,
    ),
  ),
};
