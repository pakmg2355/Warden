import 'package:warden/main.dart';

import '../enums/enums.dart';

const es = {
  'combo.spear.t1.id': 'SPT1',
  'combo.spear.t1.name': 'Golpe de Lanza tier 1',
  'combo.spear.t1.desc':
      'Inicia un combo de lanza con un ataque básico que inflige 50 de daño.\nEl daño se repite cada segundo durante 10 segundos.',
  'combo.spear.t2.id': 'SPT2',
  'combo.spear.t2.name': 'Golpe de Lanza tier 2',
  'combo.spear.t2.desc':
      'Continúa con la serie de lanza con un ataque medio que inflige 100 de daño más bonificación si está activo el de tier 1.\nEl daño se repite cada segundo durante 10 segundos.',
  'combo.spear.t3.id': 'SPT3',
  'combo.spear.t3.name': 'Golpe de Lanza tier 3',
  'combo.spear.t3.desc':
      'Continúa con la serie de lanza con un ataque avanzado que inflige 150 de daño más bonificación si están activos los de tier 1 y 2.\nEl daño se repite cada segundo durante 10 segundos.',
  'combo.spear.t4.id': 'SPT4',
  'combo.spear.t4.name': 'Golpe de Lanza tier 4',
  'combo.spear.t4.desc':
      'Acaba con la serie de lanza con un ataque supremo que inflige 200 de daño más bonificación si están activos los de tier 1, 2 y 3.\nEl daño se repite cada segundo durante 10 segundos.',

  'combo.shield.t1.id': 'SHT1',
  'combo.shield.t1.name': 'Cura tier 1',
  'combo.shield.t1.desc':
      'Inicia un combo de escudo que realiza una cura básica de 50 de vida.\nLa recuperación se repite cada segundo durante 10 segundos',
  'combo.shield.t2.id': 'SHT2',
  'combo.shield.t2.name': 'Cura tier 2',
  'combo.shield.t2.desc':
      'Continúa con la serie de de escudo realizando una cura básica de 100 de vida más bonificación si están activos los de tier 1.\nLa recuperación se repite cada segundo durante 10 segundos',
  'combo.shield.t3.id': 'SHT3',
  'combo.shield.t3.name': 'Cura tier 3',
  'combo.shield.t3.desc':
      'Continúa con la serie de de escudo realizando una cura básica de 150 de vida más bonificación si están activos los de tier 1 y 2.\nLa recuperación se repite cada segundo durante 10 segundos',
  'combo.shield.t4.id': 'SHT4',
  'combo.shield.t4.name': 'Cura tier 4',
  'combo.shield.t4.desc':
      'Continúa con la serie de de escudo realizando una cura básica de 200 de vida más bonificación si están activos los de tier 1, 2 y 3.\nLa recuperación se repite cada segundo durante 10 segundos',

  'combo.fear.t1.id': 'FE1',
  'combo.fear.t1.name': 'Fear tier 1',
  'combo.fear.t1.desc':
      'Inicia un combo de grito con un ataque básico que inflige 50 de daño.\nEl daño se repite cada segundo durante 10 segundos.\nAdemás añade un efecto en el rival añadiendo la probabilidad de 5% de entrar en estado de Miedo durante 10 segundos.\nSe sumarán todas las probabilidades de todos los tiers.',
  'combo.fear.t2.id': 'FE2',
  'combo.fear.t2.name': 'Fear tier 2',
  'combo.fear.t2.desc':
      'Inicia un combo de grito con un ataque básico que inflige 100 de daño.\nEl daño se repite cada segundo durante 10 segundos.\nAdemás añade un efecto en el rival añadiendo la probabilidad de 5% de entrar en estado de Miedo durante 10 segundos.\nSe sumarán todas las probabilidades de todos los tiers.',
  'combo.fear.t3.id': 'FE3',
  'combo.fear.t3.name': 'Fear tier 3',
  'combo.fear.t3.desc':
      'Inicia un combo de grito con un ataque básico que inflige 150 de daño.\nEl daño se repite cada segundo durante 10 segundos.\nAdemás añade un efecto en el rival añadiendo la probabilidad de 5% de entrar en estado de Miedo durante 10 segundos.\nSe sumarán todas las probabilidades de todos los tiers.',
  'combo.fear.t4.id': 'FE4',
  'combo.fear.t4.name': 'Fear tier 4',
  'combo.fear.t4.desc':
      'Inicia un combo de grito con un ataque básico que inflige 200 de daño.\nEl daño se repite cada segundo durante 10 segundos.\nAdemás añade un efecto en el rival añadiendo la probabilidad de 5% de entrar en estado de Miedo durante 10 segundos.\nSe sumarán todas las probabilidades de todos los tiers.',

  'combo.daze.t1.id': 'DA1',
  'combo.daze.t1.name': 'Daze tier 1',
  'combo.daze.t1.desc':
      'Inicia un combo de grito que añade un efecto en el rival añadiendo la probabilidad de 15% de entrar en estado de aturdimiento durante 10 segundos.\nSe sumarán todas las probabilidades de todos los tiers.',
  'combo.daze.t2.id': 'DA2',
  'combo.daze.t2.name': 'Daze tier 1',
  'combo.daze.t2.desc':
      'Inicia un combo de grito que añade un efecto en el rival añadiendo la probabilidad de 15% de entrar en estado de aturdimiento durante 10 segundos.\nSe sumarán todas las probabilidades de todos los tiers.',
  'combo.daze.t3.id': 'DA3',
  'combo.daze.t3.name': 'Daze tier 1',
  'combo.daze.t3.desc':
      'Inicia un combo de grito que añade un efecto en el rival añadiendo la probabilidad de 15% de entrar en estado de aturdimiento durante 10 segundos.\nSe sumarán todas las probabilidades de todos los tiers.',
  'combo.daze.t4.id': 'DA4',
  'combo.daze.t4.name': 'Daze tier 1',
  'combo.daze.t4.desc':
      'Inicia un combo de grito que añade un efecto en el rival añadiendo la probabilidad de 15% de entrar en estado de aturdimiento durante 10 segundos.\nSe sumarán todas las probabilidades de todos los tiers.',

  'combo.shieldmaster.t1.id': 'ST1',
  'combo.shieldmaster.t1.name': 'Protección Física Escudo',
  'combo.shieldmaster.t1.desc':
      'Durante 60 segundos el jugador mitigará el daño que reciba por golpes al 50%.',

  'combo.shieldtactics.t1.id': 'SM1',
  'combo.shieldtactics.t1.name': 'Protección Táctica Escudo',
  'combo.shieldtactics.t1.desc':
      'Durante 60 segundos el jugador estará a salvo de quedar en estado de Miedo o Aturdimiento.',

  'combo.power.t1.id': 'PW1',
  'combo.power.t1.name': 'Recuperación Power tier 1',
  'combo.power.t1.desc':
      'Realiza un combo para pasar 150 de la vida del jugador al power.',

  'titulo.warden.gambit.system': 'Combos/Gambits Warden',
  'titulo.by': 'por',
  'titulo.oscar.martinez.gomez': 'Oscar Martínez Gómez',

  'menu.experiencia': 'Experiéncia',
  'menu.combate': 'COMBATE',
  'menu.gambit.info': 'LISTADO COMBOS',
  'menu.configuracion': 'CONFIGURACIÓN',
  'menu.reset': 'REINICIO JUGADOR',
  'boton.guardar': 'GUARDAR',
  'boton.aceptar': 'ACEPTAR',
  'boton.cancelar': 'CANCELAR',
  'texto.aviso.reset':
      'Atención, está a punto de resetear todo el progreso del jugador.\n\nIntroduce el nuevo nombre de jugador',
  'texto.idioma': 'Idioma',
  'texto.escritura': 'Escritura',
  'texto.tema': 'Tema',
  'texto.musicayefectos': 'Música y Efectos',
};

const en = {
  'combo.spear.t1.id': 'SPT1',
  'combo.spear.t1.name': 'Spear Strike tier 1',
  'combo.spear.t1.desc':
      'Initiates a spear combo with a basic attack that deals 50 damage.\nThe damage is repeated every second for 10 seconds.',

  'combo.spear.t2.id': 'SPT2',
  'combo.spear.t2.name': 'Spear Strike tier 2',
  'combo.spear.t2.desc':
      'Continues the spear combo with a medium attack that deals 100 damage, with an additional bonus if tier 1 is active.\nThe damage is repeated every second for 10 seconds.',

  'combo.spear.t3.id': 'SPT3',
  'combo.spear.t3.name': 'Spear Strike tier 3',
  'combo.spear.t3.desc':
      'Continues the spear combo with an advanced attack that deals 150 damage, with an additional bonus if tiers 1 and 2 are active.\nThe damage is repeated every second for 10 seconds.',

  'combo.spear.t4.id': 'SPT4',
  'combo.spear.t4.name': 'Spear Strike tier 4',
  'combo.spear.t4.desc':
      'Ends the spear combo with a supreme attack that deals 200 damage, with an additional bonus if tiers 1, 2 and 3 are active.\nThe damage is repeated every second for 10 seconds.',

  'combo.shield.t1.id': 'SHT1',
  'combo.shield.t1.name': 'Heal tier 1',
  'combo.shield.t1.desc':
      'Initiates a shield combo that performs a basic heal of 50 health.\nThe recovery is repeated every second for 10 seconds.',

  'combo.shield.t2.id': 'SHT2',
  'combo.shield.t2.name': 'Heal tier 2',
  'combo.shield.t2.desc':
      'Continues the shield combo by performing a basic heal of 100 health, with an additional bonus if tier 1 is active.\nThe recovery is repeated every second for 10 seconds.',

  'combo.shield.t3.id': 'SHT3',
  'combo.shield.t3.name': 'Heal tier 3',
  'combo.shield.t3.desc':
      'Continues the shield combo by performing a basic heal of 100 health, with an additional bonus if tiers 1 and 2 are active.\nThe recovery is repeated every second for 10 seconds.',

  'combo.shield.t4.id': 'SHT4',
  'combo.shield.t4.name': 'Heal tier 4',
  'combo.shield.t4.desc':
      'Continues the shield combo by performing a basic heal of 100 health, with an additional bonus if tiers 1, 2 and 3 are active.\nThe recovery is repeated every second for 10 seconds.',

  'combo.fear.t1.id': 'FE1',
  'combo.fear.t1.name': 'Fear tier 1',
  'combo.fear.t1.desc':
      'Initiates a shout combo with a basic attack that deals 50 damage.\nThe damage is repeated every second for 10 seconds.\nAdditionally, it applies an effect to the enemy with a 5% chance to enter the Fear state for 10 seconds.\nAll tier probabilities are cumulative.',

  'combo.fear.t2.id': 'FE2',
  'combo.fear.t2.name': 'Fear tier 2',
  'combo.fear.t2.desc':
      'Initiates a shout combo with a basic attack that deals 100 damage.\nThe damage is repeated every second for 10 seconds.\nAdditionally, it applies an effect to the enemy with a 5% chance to enter the Fear state for 10 seconds.\nAll tier probabilities are cumulative.',

  'combo.fear.t3.id': 'FE3',
  'combo.fear.t3.name': 'Fear tier 3',
  'combo.fear.t3.desc':
      'Initiates a shout combo with a basic attack that deals 150 damage.\nThe damage is repeated every second for 10 seconds.\nAdditionally, it applies an effect to the enemy with a 5% chance to enter the Fear state for 10 seconds.\nAll tier probabilities are cumulative.',

  'combo.fear.t4.id': 'FE4',
  'combo.fear.t4.name': 'Fear tier 4',
  'combo.fear.t4.desc':
      'Initiates a shout combo with a basic attack that deals 200 damage.\nThe damage is repeated every second for 10 seconds.\nAdditionally, it applies an effect to the enemy with a 5% chance to enter the Fear state for 10 seconds.\nAll tier probabilities are cumulative.',

  'combo.daze.t1.id': 'DA1',
  'combo.daze.t1.name': 'Daze tier 1',
  'combo.daze.t1.desc':
      'Initiates a shout combo that applies an effect to the enemy with a 15% chance to enter the Daze state for 10 seconds.\nAll tier probabilities are cumulative.',

  'combo.daze.t2.id': 'DA2',
  'combo.daze.t2.name': 'Daze tier 2',
  'combo.daze.t2.desc':
      'Initiates a shout combo that applies an effect to the enemy with a 15% chance to enter the Daze state for 10 seconds.\nAll tier probabilities are cumulative.',

  'combo.daze.t3.id': 'DA3',
  'combo.daze.t3.name': 'Daze tier 3',
  'combo.daze.t3.desc':
      'Initiates a shout combo that applies an effect to the enemy with a 15% chance to enter the Daze state for 10 seconds.\nAll tier probabilities are cumulative.',

  'combo.daze.t4.id': 'DA4',
  'combo.daze.t4.name': 'Daze tier 4',
  'combo.daze.t4.desc':
      'Initiates a shout combo that applies an effect to the enemy with a 15% chance to enter the Daze state for 10 seconds.\nAll tier probabilities are cumulative.',

  'combo.shieldmaster.t1.id': 'ST1',
  'combo.shieldmaster.t1.name': 'Shield Physical Protection',
  'combo.shieldmaster.t1.desc':
      'For 60 seconds, the player mitigates 50% of the damage received from physical attacks.',

  'combo.shieldtactics.t1.id': 'SM1',
  'combo.shieldtactics.t1.name': 'Shield Tactical Protection',
  'combo.shieldtactics.t1.desc':
      'For 60 seconds, the player is immune to Fear and Daze states.',

  'combo.power.t1.id': 'PW1',
  'combo.power.t1.name': 'Power Recovery tier 1',
  'combo.power.t1.desc':
      'Performs a combo that converts 150 of the player\'s health into power.',

  'titulo.warden.gambit.system': 'Warden Gambits System',
  'titulo.by': 'by',
  'titulo.oscar.martinez.gomez': 'Oscar Martínez Gómez',

  'menu.experiencia': 'Experience',
  'menu.combate': 'COMBAT',
  'menu.gambit.info': 'GAMBITS LIST',
  'menu.configuracion': 'CONFIGURATION',
  'menu.reset': 'PLAYER RESET',
  'boton.guardar': 'SAVE',
  'boton.aceptar': 'ACCEPT',
  'boton.cancelar': 'CANCEL',
  'texto.aviso.reset':
      'Warning, you are about to reset the player and all of their progress.\n\nEnter the new player name',
  'texto.idioma': 'Language',
  'texto.escritura': 'Write Method',
  'texto.tema': 'Theme',
  'texto.musicayefectos': 'Music and Fx',
};

String t(String key) {
  final idioma = preferencesController.current.idioma;
  switch (idioma) {
    case Idioma.en:
      return en[key] ?? '';
    case Idioma.es:
      return es[key] ?? '';
    default:
      return es[key] ?? '';
  }
}
