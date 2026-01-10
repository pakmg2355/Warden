import 'package:warden/main.dart';

import '../../game/entities/enums.dart';

const es = {
  'experiencia': 'Experiéncia',
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

  'combo.statAtaque.t1.id': 'STA1',
  'combo.statAtaque.t1.name': 'Stats Ataque tier 1',
  'combo.statAtaque.t1.desc':
      'Aumenta en 10 puntos los stats de Ataque del jugador durante 30 segundos',

  'combo.statDefensa.t1.id': 'STD1',
  'combo.statDefensa.t1.name': 'Stats Defensa tier 1',
  'combo.statDefensa.t1.desc':
      'Aumenta en 10 puntos los stats de Defensa del jugador durante 30 segundos',

  'combo.statCuracion.t1.id': 'STD1',
  'combo.statCuracion.t1.name': 'Stats Curacion tier 1',
  'combo.statCuracion.t1.desc':
      'Aumenta en 10 puntos los stats de Curación del jugador durante 30 segundos',

  'combo.statPoder.t1.id': 'STD1',
  'combo.statPoder.t1.name': 'Stats Poder tier 1',
  'combo.statPoder.t1.desc':
      'Aumenta en 10 puntos los stats de Poder del jugador durante 30 segundos',

  'combo.statPowerRegen.t1.id': 'STD1',
  'combo.statPowerRegen.t1.name': 'Stats PowerRegen tier 1',
  'combo.statPowerRegen.t1.desc':
      'Aumenta en 10 puntos los stats de PowerRegen del jugador durante 30 segundos',

  'titulo.warden.gambit.system': 'Combos/Gambits Warden',
  'titulo.by': 'por',
  'titulo.oscar.martinez.gomez': 'Oscar Martínez Gómez',

  'menu.experiencia': 'Experiéncia',
  'menu.combate': 'COMBATE',
  'menu.gambit.info': 'LISTADO COMBOS',
  'menu.configuracion': 'CONFIGURACIÓN',
  'menu.reset': 'REINICIO JUGADOR',
  'menu.inventario': 'INVENTARIO',
  'boton.guardar': 'GUARDAR',
  'boton.aceptar': 'ACEPTAR',
  'boton.cancelar': 'CANCELAR',
  'texto.aviso.reset':
      'Atención, está a punto de resetear todo el progreso del jugador.\n\nIntroduce el nuevo nombre de jugador',
  'texto.idioma': 'Idioma',
  'texto.escritura': 'Escritura',
  'texto.tema': 'Tema',
  'texto.musicayefectos': 'Música y Efectos',
  'texto.about': 'ACERCA DE ...',
  'texto.playerWin': 'JUGADOR GANA',
  'texto.rivalWin': 'RIVAL GANA',
  'texto.eligeRecompensa': 'Elige recompensa...',

  'item.potVida.descripcion': 'Recupera el 30% de la vida máxima al instante',
  'item.potPower.descripcion': 'Recupera el 30% del power máximo al instante',

  'item.pecheraCueroBree.nombre': 'Pechera de Cuero de Bree',
  'item.pecheraCueroBree.descripcion':
      'Armadura ligera de cuero curtido en Bree, sencilla pero resistente.',
  'item.pecheraCueroElfico.nombre': 'Pechera de Cuero Élfico',
  'item.pecheraCueroElfico.descripcion':
      'Cuero élfico flexible y silencioso, forjado con artes antiguas.',
  'item.pecheraHierroElfico.nombre': 'Pechera de Hierro Élfico',
  'item.pecheraHierroElfico.descripcion':
      'Hierro trabajado por elfos, ligero y sorprendentemente resistente.',
  'item.pecheraHierroEnano.nombre': 'Pechera de Hierro Enano',
  'item.pecheraHierroEnano.descripcion':
      'Armadura robusta forjada en las montañas por manos enanas.',
  'item.pecheraAceroGondor.nombre': 'Pechera de Acero de Gondor',
  'item.pecheraAceroGondor.descripcion':
      'Acero templado de Gondor, símbolo de disciplina y honor.',
  'item.pecheraMithril.nombre': 'Pechera de Mithril',
  'item.pecheraMithril.descripcion':
      'Forjada en mithril puro, ligera como una pluma y dura como el acero.',

  'item.pantalonesCueroBree.nombre': 'Pantalones de Cuero de Bree',
  'item.pantalonesCueroBree.descripcion':
      'Protección básica de cuero, cómoda para largos viajes.',
  'item.pantalonesCueroElfico.nombre': 'Pantalones de Cuero Élfico',
  'item.pantalonesCueroElfico.descripcion':
      'Cuero refinado que permite moverse sin hacer ruido.',
  'item.pantalonesHierroElfico.nombre': 'Pantalones de Hierro Élfico',
  'item.pantalonesHierroElfico.descripcion':
      'Placas élficas ligeras que protegen sin entorpecer.',
  'item.pantalonesHierroEnano.nombre': 'Pantalones de Hierro Enano',
  'item.pantalonesHierroEnano.descripcion':
      'Hierro grueso diseñado para resistir golpes directos.',
  'item.pantalonesAceroGondor.nombre': 'Pantalones de Acero de Gondor',
  'item.pantalonesAceroGondor.descripcion':
      'Protección militar estándar de los ejércitos de Gondor.',
  'item.pantalonesMithril.nombre': 'Pantalones de Mithril',
  'item.pantalonesMithril.descripcion':
      'Mithril entrelazado que ofrece protección legendaria.',

  'item.hombrerasCueroBree.nombre': 'Hombreras de Cuero de Bree',
  'item.hombrerasCueroBree.descripcion':
      'Hombreras simples usadas por guardias y viajeros.',
  'item.hombrerasCueroElfico.nombre': 'Hombreras de Cuero Élfico',
  'item.hombrerasCueroElfico.descripcion':
      'Elegantes hombreras élficas de gran flexibilidad.',
  'item.hombrerasHierroElfico.nombre': 'Hombreras de Hierro Élfico',
  'item.hombrerasHierroElfico.descripcion':
      'Hierro élfico moldeado para desviar ataques.',
  'item.hombrerasHierroEnano.nombre': 'Hombreras de Hierro Enano',
  'item.hombrerasHierroEnano.descripcion':
      'Placas pesadas diseñadas para resistir embestidas.',
  'item.hombrerasAceroGondor.nombre': 'Hombreras de Acero de Gondor',
  'item.hombrerasAceroGondor.descripcion':
      'Protección firme usada por los soldados veteranos.',
  'item.hombrerasMithril.nombre': 'Hombreras de Mithril',
  'item.hombrerasMithril.descripcion':
      'Mithril pulido que combina defensa y ligereza.',

  'item.guantesCueroBree.nombre': 'Guantes de Cuero de Bree',
  'item.guantesCueroBree.descripcion':
      'Guantes sencillos que protegen las manos del desgaste.',
  'item.guantesCueroElfico.nombre': 'Guantes de Cuero Élfico',
  'item.guantesCueroElfico.descripcion':
      'Guantes suaves que mejoran la precisión.',
  'item.guantesMithril.nombre': 'Guantes de Mithril',
  'item.guantesMithril.descripcion':
      'Guantes legendarios que no sacrifican movilidad.',

  'item.escudoMaderaVieja.nombre': 'Escudo de Madera Vieja',
  'item.escudoMaderaVieja.descripcion':
      'Escudo rudimentario tallado en madera endurecida.',
  'item.escudoHierroElfico.nombre': 'Escudo de Hierro Élfico',
  'item.escudoHierroElfico.descripcion':
      'Escudo equilibrado, resistente y elegante.',
  'item.escudoHierroEnano.nombre': 'Escudo de Hierro Enano',
  'item.escudoHierroEnano.descripcion':
      'Escudo macizo capaz de detener golpes devastadores.',
  'item.escudoAceroGondor.nombre': 'Escudo de Acero de Gondor',
  'item.escudoAceroGondor.descripcion':
      'Escudo militar con el emblema de Gondor.',
  'item.escudoMithril.nombre': 'Escudo de Mithril',
  'item.escudoMithril.descripcion': 'Escudo legendario casi indestructible.',

  'item.espadaMaderaVieja.nombre': 'Espada de Madera Vieja',
  'item.espadaMaderaVieja.descripcion':
      'Arma de entrenamiento o último recurso.',
  'item.espadaHierroElfico.nombre': 'Espada de Hierro Élfico',
  'item.espadaHierroElfico.descripcion':
      'Hoja ligera y afilada forjada por elfos.',
  'item.espadaHierroEnano.nombre': 'Espada de Hierro Enano',
  'item.espadaHierroEnano.descripcion':
      'Espada robusta diseñada para golpes contundentes.',
  'item.espadaAceroGondor.nombre': 'Espada de Acero de Gondor',
  'item.espadaAceroGondor.descripcion':
      'Arma noble usada por los defensores del reino.',
  'item.espadaMithril.nombre': 'Espada de Mithril',
  'item.espadaMithril.descripcion': 'Hoja legendaria de filo eterno.',

  'item.cascoCueroBree.nombre': 'Casco de Cuero de Bree',
  'item.cascoCueroBree.descripcion': 'Casco ligero para protección básica.',
  'item.cascoCueroElfico.nombre': 'Casco de Cuero Élfico',
  'item.cascoCueroElfico.descripcion':
      'Casco discreto que no limita la visión.',
  'item.cascoHierroElfico.nombre': 'Casco de Hierro Élfico',
  'item.cascoHierroElfico.descripcion':
      'Protección refinada con diseño élfico.',
  'item.cascoHierroEnano.nombre': 'Casco de Hierro Enano',
  'item.cascoHierroEnano.descripcion':
      'Casco pesado hecho para resistir impactos.',
  'item.cascoAceroGondor.nombre': 'Casco de Acero de Gondor',
  'item.cascoAceroGondor.descripcion': 'Casco oficial del ejército de Gondor.',
  'item.cascoMithril.nombre': 'Casco de Mithril',
  'item.cascoMithril.descripcion':
      'Casco legendario de resistencia inigualable.',

  'item.capaCueroBree.nombre': 'Capa de Bree',
  'item.capaCueroBree.descripcion':
      'Capa sencilla que protege del frío y la lluvia.',
  'item.capaCueroElfico.nombre': 'Capa Élfica',
  'item.capaCueroElfico.descripcion':
      'Capa élfica que ayuda a pasar desapercibido.',
  'item.capaMithril.nombre': 'Capa de Mithril',
  'item.capaMithril.descripcion': 'Capa rara reforzada con hilos de mithril.',

  'item.botasCueroBree.nombre': 'Botas de Cuero de Bree',
  'item.botasCueroBree.descripcion': 'Botas resistentes para caminos largos.',
  'item.botasCueroElfico.nombre': 'Botas de Cuero Élfico',
  'item.botasCueroElfico.descripcion': 'Botas silenciosas y ligeras.',
  'item.botasMithril.nombre': 'Botas de Mithril',
  'item.botasMithril.descripcion': 'Botas legendarias que no pesan al caminar.',

  'item.anilloHumanoBree.nombre': 'Anillo de Bree',
  'item.anilloHumanoBree.descripcion':
      'Anillo sencillo usado por los hombres de Bree.',
  'item.anilloElfico.nombre': 'Anillo Élfico',
  'item.anilloElfico.descripcion':
      'Anillo antiguo imbuido de sabiduría élfica.',
  'item.anilloEnano.nombre': 'Anillo Enano',
  'item.anilloEnano.descripcion': 'Anillo pesado símbolo de riqueza y poder.',
  'item.anilloOscuro.nombre': 'Anillo Oscuro',
  'item.anilloOscuro.descripcion':
      'Un anillo de poder prohibido que corrompe a su portador.',

  'item.pendienteHumanoBree.nombre': 'Pendiente de Bree',
  'item.pendienteHumanoBree.descripcion':
      'Pendiente sencillo usado por los hombres de Bree.',
  'item.pendienteElfico.nombre': 'Pendiente Élfico',
  'item.pendienteElfico.descripcion':
      'Pendiente antiguo imbuido de sabiduría élfica.',
  'item.pendienteEnano.nombre': 'Pendiente Enano',
  'item.pendienteEnano.descripcion':
      'Pendiente pesado símbolo de riqueza y poder.',
  'item.pendienteOscuro.nombre': 'Pendiente Oscuro',
  'item.pendienteOscuro.descripcion':
      'Un pendiente de poder prohibido que corrompe a su portador.',

  'item.collarHumanoBree.nombre': 'Collar de Bree',
  'item.collarHumanoBree.descripcion':
      'Collar sencillo usado por los hombres de Bree.',
  'item.collarElfico.nombre': 'Collar Élfico',
  'item.collarElfico.descripcion':
      'Collar antiguo imbuido de sabiduría élfica.',
  'item.collarEnano.nombre': 'Collar Enano',
  'item.collarEnano.descripcion': 'Collar pesado símbolo de riqueza y poder.',
  'item.collarOscuro.nombre': 'Collar Oscuro',
  'item.collarOscuro.descripcion':
      'Un collar de poder prohibido que corrompe a su portador.',

  'item.brazaleteHumanoBree.nombre': 'Brazalete de Bree',
  'item.brazaleteHumanoBree.descripcion':
      'Brazalete sencillo usado por los hombres de Bree.',
  'item.brazaleteElfico.nombre': 'Brazalete Élfico',
  'item.brazaleteElfico.descripcion':
      'Brazalete antiguo imbuido de sabiduría élfica.',
  'item.brazaleteEnano.nombre': 'Brazalete Enano',
  'item.brazaleteEnano.descripcion':
      'Brazalete pesado símbolo de riqueza y poder.',
  'item.brazaleteOscuro.nombre': 'Brazalete Oscuro',
  'item.brazaleteOscuro.descripcion':
      'Un brazalete de poder prohibido que corrompe a su portador.',

  'item.hebillaHumanoBree.nombre': 'Hebilla de Bree',
  'item.hebillaHumanoBree.descripcion':
      'Hebilla sencilla usada por los hombres de Bree.',
  'item.hebillaElfico.nombre': 'Hebilla Élfica',
  'item.hebillaElfico.descripcion':
      'Hebilla antigua imbuida de sabiduría élfica.',
  'item.hebillaEnano.nombre': 'Hebilla Enana',
  'item.hebillaEnano.descripcion': 'Hebilla pesada símbolo de riqueza y poder.',
  'item.hebillaOscuro.nombre': 'Hebilla Oscura',
  'item.hebillaOscuro.descripcion':
      'Una hebilla de poder prohibido que corrompe a su portador.',

  'texto.about.info':
      'Warden es un juego de combate estratégico por turnos con una fuerte inspiración en la fantasía oscura.\n\n'
      'El jugador encarna a un guardián solitario que debe enfrentarse a una sucesión de enemigos utilizando habilidad, táctica y una correcta gestión del combate. Cada enfrentamiento no se basa únicamente en la fuerza bruta, sino en la elección adecuada de acciones y en el dominio de los combos.\n\n'
      'El sistema de combate se articula a través de combos encadenados. Cada acción puede potenciar a las siguientes, desbloqueando bonificaciones adicionales si se ejecutan en el orden correcto. Aprender a mantener activos los efectos y a combinar los distintos niveles de ataque es clave para sobrevivir y avanzar.\n\n'
      'Warden está diseñado para ofrecer una experiencia clara y directa, con una interfaz minimalista y una ambientación cuidada. Bajo el capó, el juego está desarrollado con tecnología moderna, utilizando Flutter como motor principal, lo que permite un rendimiento sólido y una evolución constante del proyecto.\n\n'
      'Este juego es un proyecto en desarrollo, creado con pasión, experimentación y atención al detalle, donde cada combate cuenta.\n\n\n'
      'El código fuente del juego lo podéis descargar en github\n\n'
      'https://www.svgrepo.com/'
      'https://github.com/pakmg2355/Warden\n\n'
      'Cualquier mejora y comentario será bienvenido\n\n',

  'enemigo.nivel.1': 'Snag-Kar',
  'enemigo.nivel.2': 'Gor-Muk',
  'enemigo.nivel.3': 'Ush-Nak',
  'enemigo.nivel.4': 'Rak-Zul',
  'enemigo.nivel.5': 'Mor-Gash',
  'enemigo.nivel.6': 'Kru-Nok',
  'enemigo.nivel.7': 'Zar-Gul',
  'enemigo.nivel.8': 'Thak-Mor',
  'enemigo.nivel.9': 'Ugr-Nesh',
  'enemigo.nivel.10': 'Bog-Rak',

  'enemigo.nivel.11': 'Ur-Mak',
  'enemigo.nivel.12': 'Dru-Gor',
  'enemigo.nivel.13': 'Naz-Kur',
  'enemigo.nivel.14': 'Krag-Mul',
  'enemigo.nivel.15': 'Uruk-Zhar',
  'enemigo.nivel.16': 'Bol-Drak',
  'enemigo.nivel.17': 'Sha-Gor',
  'enemigo.nivel.18': 'Hor-Kun',
  'enemigo.nivel.19': 'Kap-Zul',
  'enemigo.nivel.20': 'Is-Mor',

  'enemigo.nivel.21': 'Gor-Bak',
  'enemigo.nivel.22': 'Thra-Kur',
  'enemigo.nivel.23': 'Ur-Dash',
  'enemigo.nivel.24': 'Mor-Zag',
  'enemigo.nivel.25': 'Uruk-Khan',
  'enemigo.nivel.26': 'Zug-Dor',
  'enemigo.nivel.27': 'Rak-Thar',
  'enemigo.nivel.28': 'Krag-Hul',
  'enemigo.nivel.29': 'Kui-Vor',
  'enemigo.nivel.30': 'Lot-Ner',

  'enemigo.nivel.31': 'Kra-Shin',
  'enemigo.nivel.32': 'Olog-Tui',
  'enemigo.nivel.33': 'Troll-Kai',
  'enemigo.nivel.34': 'Gash-Nor',
  'enemigo.nivel.35': 'Best-Rai',
  'enemigo.nivel.36': 'Tull-Hai',
  'enemigo.nivel.37': 'Olog-Ven',
  'enemigo.nivel.38': 'Ur-Dur',
  'enemigo.nivel.39': 'Troll-War',
  'enemigo.nivel.40': 'Mor-Champ',

  'enemigo.nivel.41': 'Sha-Pass',
  'enemigo.nivel.42': 'Ring-Wraith',
  'enemigo.nivel.43': 'Morg-Ace',
  'enemigo.nivel.44': 'Dark-Serv',
  'enemigo.nivel.45': 'Eye-Guard',
  'enemigo.nivel.46': 'Night-Her',
  'enemigo.nivel.47': 'War-Spirit',
  'enemigo.nivel.48': 'Anc-Shadow',
  'enemigo.nivel.49': 'Morg-Lieut',
  'enemigo.nivel.50': 'Eye-Champ',
};

const en = {
  'experiencia': 'Experience',

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
  'menu.inventario': 'INVENTORY',
  'boton.guardar': 'SAVE',
  'boton.aceptar': 'ACCEPT',
  'boton.cancelar': 'CANCEL',
  'texto.aviso.reset':
      'Warning, you are about to reset the player and all of their progress.\n\nEnter the new player name',
  'texto.idioma': 'Language',
  'texto.escritura': 'Write Method',
  'texto.tema': 'Theme',
  'texto.musicayefectos': 'Music and Fx',
  'texto.about': 'ABOUT ...',

  'texto.playerWin': 'PLAYER WINS',
  'texto.rivalWin': 'RIVAL WINS',
  'texto.eligeRecompensa': 'Choose reward...',

  'item.potVida.descripcion': 'Recovers 30% of maximum health instantly',
  'item.potPower.descripcion': 'Recovers 10% of maximum power instantly',

  'item.pecheraCueroBree.nombre': 'Bree Leather Chestplate',
  'item.pecheraCueroBree.descripcion':
      'A light leather armor tanned in Bree, simple yet reliable.',
  'item.pecheraCueroElfico.nombre': 'Elven Leather Chestplate',
  'item.pecheraCueroElfico.descripcion':
      'Flexible and silent elven leather, crafted with ancient skill.',
  'item.pecheraHierroElfico.nombre': 'Elven Iron Chestplate',
  'item.pecheraHierroElfico.descripcion':
      'Elven-forged iron, light and surprisingly resilient.',
  'item.pecheraHierroEnano.nombre': 'Dwarven Iron Chestplate',
  'item.pecheraHierroEnano.descripcion':
      'Sturdy armor forged in the mountains by dwarven hands.',
  'item.pecheraAceroGondor.nombre': 'Gondor Steel Chestplate',
  'item.pecheraAceroGondor.descripcion':
      'Tempered steel from Gondor, a symbol of discipline and honor.',
  'item.pecheraMithril.nombre': 'Mithril Chestplate',
  'item.pecheraMithril.descripcion':
      'Forged from pure mithril, light as a feather and hard as steel.',

  'item.pantalonesCueroBree.nombre': 'Bree Leather Leggings',
  'item.pantalonesCueroBree.descripcion':
      'Basic leather protection, comfortable for long journeys.',
  'item.pantalonesCueroElfico.nombre': 'Elven Leather Leggings',
  'item.pantalonesCueroElfico.descripcion':
      'Refined leather that allows silent movement.',
  'item.pantalonesHierroElfico.nombre': 'Elven Iron Leggings',
  'item.pantalonesHierroElfico.descripcion':
      'Light elven plates that protect without hindering movement.',
  'item.pantalonesHierroEnano.nombre': 'Dwarven Iron Leggings',
  'item.pantalonesHierroEnano.descripcion':
      'Thick iron designed to withstand direct blows.',
  'item.pantalonesAceroGondor.nombre': 'Gondor Steel Leggings',
  'item.pantalonesAceroGondor.descripcion':
      'Standard military protection of Gondor’s armies.',
  'item.pantalonesMithril.nombre': 'Mithril Leggings',
  'item.pantalonesMithril.descripcion':
      'Interwoven mithril offering legendary protection.',

  'item.hombrerasCueroBree.nombre': 'Bree Leather Pauldrons',
  'item.hombrerasCueroBree.descripcion':
      'Simple pauldrons used by guards and travelers.',
  'item.hombrerasCueroElfico.nombre': 'Elven Leather Pauldrons',
  'item.hombrerasCueroElfico.descripcion':
      'Elegant elven pauldrons with great flexibility.',
  'item.hombrerasHierroElfico.nombre': 'Elven Iron Pauldrons',
  'item.hombrerasHierroElfico.descripcion':
      'Elven iron shaped to deflect incoming blows.',
  'item.hombrerasHierroEnano.nombre': 'Dwarven Iron Pauldrons',
  'item.hombrerasHierroEnano.descripcion':
      'Heavy plates designed to resist powerful charges.',
  'item.hombrerasAceroGondor.nombre': 'Gondor Steel Pauldrons',
  'item.hombrerasAceroGondor.descripcion':
      'Solid protection worn by veteran soldiers.',
  'item.hombrerasMithril.nombre': 'Mithril Pauldrons',
  'item.hombrerasMithril.descripcion':
      'Polished mithril combining defense and lightness.',

  'item.guantesCueroBree.nombre': 'Bree Leather Gloves',
  'item.guantesCueroBree.descripcion':
      'Simple gloves that protect the hands from wear.',
  'item.guantesCueroElfico.nombre': 'Elven Leather Gloves',
  'item.guantesCueroElfico.descripcion': 'Soft gloves that enhance precision.',
  'item.guantesMithril.nombre': 'Mithril Gloves',
  'item.guantesMithril.descripcion':
      'Legendary gloves that never sacrifice mobility.',

  'item.escudoMaderaVieja.nombre': 'Old Wood Shield',
  'item.escudoMaderaVieja.descripcion':
      'A rudimentary shield carved from hardened wood.',
  'item.escudoHierroElfico.nombre': 'Elven Iron Shield',
  'item.escudoHierroElfico.descripcion':
      'A well-balanced shield, both resilient and elegant.',
  'item.escudoHierroEnano.nombre': 'Dwarven Iron Shield',
  'item.escudoHierroEnano.descripcion':
      'A massive shield capable of stopping devastating blows.',
  'item.escudoAceroGondor.nombre': 'Gondor Steel Shield',
  'item.escudoAceroGondor.descripcion':
      'Military shield bearing the emblem of Gondor.',
  'item.escudoMithril.nombre': 'Mithril Shield',
  'item.escudoMithril.descripcion':
      'A legendary shield, nearly indestructible.',

  'item.espadaMaderaVieja.nombre': 'Old Wood Sword',
  'item.espadaMaderaVieja.descripcion': 'A training weapon or a last resort.',
  'item.espadaHierroElfico.nombre': 'Elven Iron Sword',
  'item.espadaHierroElfico.descripcion':
      'A light and razor-sharp blade forged by elves.',
  'item.espadaHierroEnano.nombre': 'Dwarven Iron Sword',
  'item.espadaHierroEnano.descripcion':
      'A sturdy sword built for powerful strikes.',
  'item.espadaAceroGondor.nombre': 'Gondor Steel Sword',
  'item.espadaAceroGondor.descripcion':
      'A noble weapon used by the defenders of the realm.',
  'item.espadaMithril.nombre': 'Mithril Sword',
  'item.espadaMithril.descripcion': 'A legendary blade with an eternal edge.',

  'item.cascoCueroBree.nombre': 'Bree Leather Helmet',
  'item.cascoCueroBree.descripcion':
      'A light helmet offering basic protection.',
  'item.cascoCueroElfico.nombre': 'Elven Leather Helmet',
  'item.cascoCueroElfico.descripcion':
      'A discreet helmet that does not limit vision.',
  'item.cascoHierroElfico.nombre': 'Elven Iron Helmet',
  'item.cascoHierroElfico.descripcion':
      'Refined protection with an elven design.',
  'item.cascoHierroEnano.nombre': 'Dwarven Iron Helmet',
  'item.cascoHierroEnano.descripcion':
      'A heavy helmet built to withstand heavy impacts.',
  'item.cascoAceroGondor.nombre': 'Gondor Steel Helmet',
  'item.cascoAceroGondor.descripcion': 'Official helmet of Gondor’s army.',
  'item.cascoMithril.nombre': 'Mithril Helmet',
  'item.cascoMithril.descripcion':
      'A legendary helmet of unmatched resistance.',

  'item.capaCueroBree.nombre': 'Bree Cloak',
  'item.capaCueroBree.descripcion':
      'A simple cloak that protects against cold and rain.',
  'item.capaCueroElfico.nombre': 'Elven Cloak',
  'item.capaCueroElfico.descripcion':
      'An elven cloak that helps the wearer remain unseen.',
  'item.capaMithril.nombre': 'Mithril Cloak',
  'item.capaMithril.descripcion':
      'A rare cloak reinforced with mithril threads.',

  'item.botasCueroBree.nombre': 'Bree Leather Boots',
  'item.botasCueroBree.descripcion': 'Sturdy boots for long roads.',
  'item.botasCueroElfico.nombre': 'Elven Leather Boots',
  'item.botasCueroElfico.descripcion': 'Silent and lightweight boots.',
  'item.botasMithril.nombre': 'Mithril Boots',
  'item.botasMithril.descripcion':
      'Legendary boots that feel weightless when worn.',

  'item.anilloHumanoBree.nombre': 'Ring of Bree',
  'item.anilloHumanoBree.descripcion': 'A simple ring worn by the men of Bree.',
  'item.anilloElfico.nombre': 'Elven Ring',
  'item.anilloElfico.descripcion': 'An ancient ring imbued with elven wisdom.',
  'item.anilloEnano.nombre': 'Dwarven Ring',
  'item.anilloEnano.descripcion': 'A heavy ring symbol of wealth and power.',
  'item.anilloOscuro.nombre': 'Dark Ring',
  'item.anilloOscuro.descripcion':
      'A forbidden ring of power that corrupts its bearer.',

  'item.pendienteHumanoBree.nombre': 'Earring of Bree',
  'item.pendienteHumanoBree.descripcion':
      'A simple earring worn by the men of Bree.',
  'item.pendienteElfico.nombre': 'Elven Earring',
  'item.pendienteElfico.descripcion':
      'An ancient earring imbued with elven wisdom.',
  'item.pendienteEnano.nombre': 'Dwarven Earring',
  'item.pendienteEnano.descripcion':
      'A heavy earring symbol of wealth and power.',
  'item.pendienteOscuro.nombre': 'Dark Earring',
  'item.pendienteOscuro.descripcion':
      'A forbidden earring of power that corrupts its bearer.',

  'item.collarHumanoBree.nombre': 'Necklace of Bree',
  'item.collarHumanoBree.descripcion':
      'A simple necklace worn by the men of Bree.',
  'item.collarElfico.nombre': 'Elven Necklace',
  'item.collarElfico.descripcion':
      'An ancient necklace imbued with elven wisdom.',
  'item.collarEnano.nombre': 'Dwarven Necklace',
  'item.collarEnano.descripcion':
      'A heavy necklace symbol of wealth and power.',
  'item.collarOscuro.nombre': 'Dark Necklace',
  'item.collarOscuro.descripcion':
      'A forbidden necklace of power that corrupts its bearer.',

  'item.brazaleteHumanoBree.nombre': 'Bracelet of Bree',
  'item.brazaleteHumanoBree.descripcion':
      'A simple bracelet worn by the men of Bree.',
  'item.brazaleteElfico.nombre': 'Elven Bracelet',
  'item.brazaleteElfico.descripcion':
      'An ancient bracelet imbued with elven wisdom.',
  'item.brazaleteEnano.nombre': 'Dwarven Bracelet',
  'item.brazaleteEnano.descripcion':
      'A heavy bracelet symbol of wealth and power.',
  'item.brazaleteOscuro.nombre': 'Dark Bracelet',
  'item.brazaleteOscuro.descripcion':
      'A forbidden bracelet of power that corrupts its bearer.',

  'item.hebillaHumanoBree.nombre': 'Buckle of Bree',
  'item.hebillaHumanoBree.descripcion':
      'A simple buckle worn by the men of Bree.',
  'item.hebillaElfico.nombre': 'Elven Buckle',
  'item.hebillaElfico.descripcion':
      'An ancient buckle imbued with elven wisdom.',
  'item.hebillaEnano.nombre': 'Dwarven Buckle',
  'item.hebillaEnano.descripcion': 'A heavy buckle symbol of wealth and power.',
  'item.hebillaOscuro.nombre': 'Dark Buckle',
  'item.hebillaOscuro.descripcion':
      'A forbidden buckle of power that corrupts its bearer.',

  'texto.about.info':
      'Warden is a turn-based strategic combat game strongly inspired by dark fantasy.\n\n'
      'The player takes on the role of a lone guardian who must face a series of enemies using skill, tactics, and careful combat management. Each encounter is not based solely on raw strength, but on choosing the right actions and mastering the combo system.\n\n'
      'Combat revolves around chained combos. Each action can empower the next, unlocking additional bonuses when executed in the correct order. Learning how to maintain active effects and combine different attack tiers is essential for survival and progression.\n\n'
      'Warden is designed to deliver a clean and focused experience, featuring a minimalist interface and a carefully crafted atmosphere. Under the hood, the game is built using modern technology, with Flutter as its core engine, allowing for solid performance and continuous evolution.\n\n'
      'This game is an ongoing project, developed with passion, experimentation, and attention to detail, where every battle matters.\n\n\n'
      'The font code is in github\n\n'
      'https://github.com/pakmg2355/Warden\n\n'
      'Any improvement or comment will be welcome\n\n',

  'enemigo.nivel.1': 'Snag-Kar',
  'enemigo.nivel.2': 'Gor-Muk',
  'enemigo.nivel.3': 'Ush-Nak',
  'enemigo.nivel.4': 'Rak-Zul',
  'enemigo.nivel.5': 'Mor-Gash',
  'enemigo.nivel.6': 'Kru-Nok',
  'enemigo.nivel.7': 'Zar-Gul',
  'enemigo.nivel.8': 'Thak-Mor',
  'enemigo.nivel.9': 'Ugr-Nesh',
  'enemigo.nivel.10': 'Bog-Rak',

  'enemigo.nivel.11': 'Ur-Mak',
  'enemigo.nivel.12': 'Dru-Gor',
  'enemigo.nivel.13': 'Naz-Kur',
  'enemigo.nivel.14': 'Krag-Mul',
  'enemigo.nivel.15': 'Uruk-Zhar',
  'enemigo.nivel.16': 'Bol-Drak',
  'enemigo.nivel.17': 'Sha-Gor',
  'enemigo.nivel.18': 'Hor-Kun',
  'enemigo.nivel.19': 'Kap-Zul',
  'enemigo.nivel.20': 'Is-Mor',

  'enemigo.nivel.21': 'Gor-Bak',
  'enemigo.nivel.22': 'Thra-Kur',
  'enemigo.nivel.23': 'Ur-Dash',
  'enemigo.nivel.24': 'Mor-Zag',
  'enemigo.nivel.25': 'Uruk-Khan',
  'enemigo.nivel.26': 'Zug-Dor',
  'enemigo.nivel.27': 'Rak-Thar',
  'enemigo.nivel.28': 'Krag-Hul',
  'enemigo.nivel.29': 'Kui-Vor',
  'enemigo.nivel.30': 'Lot-Ner',

  'enemigo.nivel.31': 'Kra-Shin',
  'enemigo.nivel.32': 'Olog-Tui',
  'enemigo.nivel.33': 'Troll-Kai',
  'enemigo.nivel.34': 'Gash-Nor',
  'enemigo.nivel.35': 'Best-Rai',
  'enemigo.nivel.36': 'Tull-Hai',
  'enemigo.nivel.37': 'Olog-Ven',
  'enemigo.nivel.38': 'Ur-Dur',
  'enemigo.nivel.39': 'Troll-War',
  'enemigo.nivel.40': 'Mor-Champ',

  'enemigo.nivel.41': 'Sha-Pass',
  'enemigo.nivel.42': 'Ring-Wraith',
  'enemigo.nivel.43': 'Morg-Ace',
  'enemigo.nivel.44': 'Dark-Serv',
  'enemigo.nivel.45': 'Eye-Guard',
  'enemigo.nivel.46': 'Night-Her',
  'enemigo.nivel.47': 'War-Spirit',
  'enemigo.nivel.48': 'Anc-Shadow',
  'enemigo.nivel.49': 'Morg-Lieut',
  'enemigo.nivel.50': 'Eye-Champ',
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
