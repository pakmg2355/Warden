import 'package:warden/game/entities/combo.dart';
import 'package:warden/game/gambits_repository/gambits_repository_power.dart';
import 'package:warden/game/gambits_repository/gambits_repository_protection.dart';
import 'package:warden/game/gambits_repository/gambits_repository_shield.dart';
import 'package:warden/game/gambits_repository/gambits_repository_fist.dart';
import 'package:warden/game/gambits_repository/gambits_repository_spear.dart';
import 'package:warden/game/gambits_repository/gambits_repository_stats.dart';

List<ComboDefinition> listadoCombos =
    listadoCombosSpear +
    listadoCombosShield +
    listadoCombosFist +
    listadoCombosStats +
    listadoCombosProtection +
    listadoCombosPower;
