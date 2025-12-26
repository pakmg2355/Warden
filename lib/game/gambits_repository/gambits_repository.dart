import 'package:warden/game/entities/combo.dart';
import 'package:warden/game/gambits_repository/gambits_repository_power.dart';
import 'package:warden/game/gambits_repository/gambits_repository_protection.dart';
import 'package:warden/game/gambits_repository/gambits_repository_shield.dart';
import 'package:warden/game/gambits_repository/gambits_repository_fist.dart';
import 'package:warden/game/gambits_repository/gambits_repository_spear.dart';
import 'package:warden/game/gambits_repository/gambits_repository_stats.dart';
import 'package:warden/game/systems/ai_systems.dart';

List<ComboDefinition> listadoCombos =
    listadoCombosSpear +
    listadoCombosShield +
    listadoCombosFist +
    listadoCombosStats +
    listadoCombosProtection +
    listadoCombosPower;

const spear1 = AICombo(['1', '2', 'X']);
const spear2 = AICombo(['1', '2', '1', 'X']);
const spear3 = AICombo(['1', '2', '1', '2', 'X']);
const spear4 = AICombo(['1', '2', '1', '2', 'X']);
const spear5 = AICombo(['1', '2', '1', '2', '1', 'X']);

const shield1 = AICombo(['2', '1', 'X']);
const shield2 = AICombo(['2', '1', '2', 'X']);
const shield3 = AICombo(['2', '1', '2', '1', 'X']);
const shield4 = AICombo(['2', '1', '2', '1', 'X']);
const shield5 = AICombo(['2', '1', '2', '1', '2', 'X']);

const daze1 = AICombo(['3', '1', 'X']);
const daze2 = AICombo(['3', '1', '3', 'X']);
const daze3 = AICombo(['3', '1', '3', '1', 'X']);
const daze4 = AICombo(['3', '1', '3', '1', 'X']);
const daze5 = AICombo(['3', '1', '3', '1', '3', 'X']);

const fear1 = AICombo(['3', '2', 'X']);
const fear2 = AICombo(['3', '2', '3', 'X']);
const fear3 = AICombo(['3', '2', '3', '2', 'X']);
const fear4 = AICombo(['3', '2', '3', '2', 'X']);
const fear5 = AICombo(['3', '2', '3', '2', '3', 'X']);

const shieldMaster = AICombo(['2', '1', '3', '2', 'X']);
const shieldTactics = AICombo(['2', '1', '3', '1', 'X']);
const power = AICombo(['1', '3', '1', '2', '1', 'X']);

const statsAtaque = AICombo(['1', '2', '3', 'X']);
const statsDefensa = AICombo(['2', '1', '3', 'X']);
const statsPoder = AICombo(['1', '1', '1', 'X']);
const statsPowerRegen = AICombo(['3', '2', '1', 'X']);
const statsCuracion = AICombo(['2', '2', '2', 'X']);
