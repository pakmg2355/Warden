import 'package:warden/game/entities/item.dart';
import 'package:warden/game/entities/enums.dart';
import 'package:warden/game/entities/stats.dart';
import 'package:warden/game/textos/diccionario.dart';
import 'package:warden/global/constants.dart';

final itemsEquipoBotas = {
  'botasCueroBree': ItemDefinition(
    id: 'botasCueroBree',
    nombre: 'botas de Cuero de Bree',
    descripcion: t('item.botasCueroBree.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
    color: colorCueroBree,
    minLevel: 1,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 10,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'botasCueroElfico': ItemDefinition(
    id: 'botasCueroElfico',
    nombre: 'botas de Cuero de Elfico',
    descripcion: t('item.botasCueroElfico.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
    color: colorCueroElfico,
    minLevel: 10,
    stats: StatsClass(
      ataque: 0,
      defensa: 0,
      poder: 50,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
  'botasMithril': ItemDefinition(
    id: 'botasMithril',
    nombre: 'botas con incrustaciones de Mithril',
    descripcion: t('item.botasMithril.descripcion'),
    type: ItemType.equipo,
    clase: ItemClass.botas,
    color: colorMithril,
    minLevel: 20,
    stats: StatsClass(
      ataque: 0,
      defensa: 200,
      poder: 0,
      curacion: 0,
      powerRegen: 0,
    ),
  ),
};
