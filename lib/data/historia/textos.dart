import 'package:warden/global/variables.dart';
import 'package:warden/main.dart';

import '../../game/entities/enums.dart';

const es = {
  // ──────────────────────────
  // INICIO / ENTRADA
  // ──────────────────────────
  'inicio.entrarBree': 'Entrar en Bree',

  // ──────────────────────────
  // PUERTA ESTE
  // ──────────────────────────
  'bree.puerta.este.1': '''
La **puerta este de Bree** se alzaba ante el Warden como un umbral entre la seguridad del camino y el bullicio de la ciudad. Las murallas, no demasiado altas pero sólidas, mostraban cicatrices del paso del tiempo y de antiguas escaramuzas. El ir y venir de viajeros era constante, aunque muchos bajaban la voz al acercarse.
''',

  'bree.puerta.este.2': '''
Un hombre de mirada dura y capa gastada se adelantó, bloqueando el paso. No llevaba los colores de la guardia, pero su postura dejaba claro que no dudaba en usar la violencia.  
—Aquí no se entra gratis —gruñó—. O pagas, o te das la vuelta.

El Warden recordó las palabras de Kuiv: *la primera batalla siempre es decidir cómo actuar*.
''',

  'bree.puerta.buscarOtra': 'Buscar otra entrada',
  'bree.puerta.pelearGuardia': 'Plantarse y pelear',
  'bree.puerta.convencer': 'Intentar convencerlo',

  // ──────────────────────────
  // PLAZA CENTRAL
  // ──────────────────────────
  'bree.plaza.central.1': '''
La **plaza central de Bree** bullía de vida. Mercaderes pregonaban sus mercancías, viajeros descansaban junto a las fuentes y los olores de pan recién hecho y hierro caliente se mezclaban en el aire.
''',

  'bree.plaza.central.2': '''
Era un lugar donde toda historia parecía comenzar o terminar. El Warden sintió decenas de miradas curiosas, algunas amables, otras desconfiadas. Bree no juzgaba… pero tampoco olvidaba.
''',

  'bree.irPosada': 'Ir a la posada',
  'bree.irMercado': 'Explorar el mercado',
  'bree.hablarGuardias': 'Hablar con los guardias',

  // ──────────────────────────
  // POSADA
  // ──────────────────────────
  'bree.posada.entrada.1': '''
La **posada** ofrecía un refugio cálido frente al trajín de la plaza. El crepitar del fuego y el murmullo de conversaciones bajas llenaban la estancia.
''',

  'bree.posada.entrada.2': '''
Viajeros cansados compartían mesas con lugareños, y el aroma de cerveza y estofado hacía olvidar, por un momento, los peligros del camino.
''',

  'bree.hablarPosadero': 'Hablar con el posadero',
  'bree.subirHabitacion': 'Subir a una habitación',
  'bree.volverPlaza': 'Volver a la plaza',

  'bree.posada.posadero.1': '''
El posadero limpió una jarra mientras observaba al Warden con ojo experto. Había visto a muchos como él: armas gastadas, mirada alerta, silencio prudente.
''',

  'bree.posada.posadero.2': '''
—Si buscas historias, aquí sobran —dijo—. Pero algunas cuestan más que una moneda.
''',

  'bree.preguntarRumores': 'Preguntar por rumores',
  'bree.pedirTrabajo': 'Pedir trabajo',

  'bree.posada.habitacion.1': '''
La habitación era sencilla: una cama, una mesa y una ventana desde la que se veía el resplandor de Bree al anochecer.
''',

  'bree.posada.habitacion.2': '''
Era suficiente. El Warden dejó su equipo a un lado, sin perder nunca del todo la guardia.
''',

  'bree.descansar': 'Descansar',
  'bree.bajarPosada': 'Bajar a la posada',

  'bree.posada.descanso.1': '''
La noche avanzó lentamente. El silencio solo era roto por el crujir de la madera y el viento golpeando las contraventanas.
''',

  'bree.posada.descanso.2': '''
Entonces, un ruido extraño rompió la calma. Un paso. O quizá algo más…
''',

  'bree.investigarRuido': 'Investigar el ruido',
  'bree.ignorarRuido': 'Ignorar y dormir',

  // ──────────────────────────
  // MERCADO
  // ──────────────────────────
  'bree.mercado.entrada.1': '''
El **mercado de Bree** era un mosaico de colores y voces. Telas, armas, baratijas y objetos imposibles se apilaban en los puestos.
''',

  'bree.mercado.entrada.2': '''
Algunos mercaderes sonreían demasiado. Otros evitaban el contacto visual. No todo aquí era lo que parecía.
''',

  'bree.hablarComerciante': 'Hablar con un comerciante',
  'bree.objetoRaro': 'Examinar un objeto extraño',

  'bree.mercado.objetoOscuro.1': '''
Entre los objetos comunes, uno llamó la atención del Warden. Oscuro, frío al tacto, como si absorbiera la luz a su alrededor.
''',

  'bree.mercado.objetoOscuro.2': '''
El mercader sonrió con nerviosismo.  
—Algunos objetos… eligen a su dueño.
''',

  'bree.tocarObjeto': 'Tocar el objeto',
  'bree.alejarse': 'Alejarse con cautela',

  // ──────────────────────────
  // GUARDIAS Y SALIDA
  // ──────────────────────────
  'bree.guardias.charla.1': '''
Los guardias de Bree observaban la plaza con atención constante. No eran soldados curtidos en guerra, pero conocían bien los problemas de una ciudad de paso.
''',

  'bree.guardias.charla.2': '''
—Si vas a salir de Bree —advirtió uno—, asegúrate de estar preparado. Los caminos no perdonan a los imprudentes.
''',

  'bree.salirBree': 'Salir de Bree',
  'bree.quedarse': 'Quedarse en la ciudad',

  // ──────────────────────────
  // SALIDA
  // ──────────────────────────
  'salida.bree.1': '''
El camino se abría ante el Warden, alejándose de las murallas de Bree y adentrándose en tierras menos seguras.
''',

  'salida.bree.2': '''
Bree quedaba atrás, pero sus decisiones allí marcarían lo que estaba por venir. El viaje continuaba.
''',

  'continuar.aventura': 'Continuar la aventura',
};

String th(String key) {
  final idioma = preferencesController.current.idioma;

  switch (idioma) {
    case Idioma.es:
      return es[key].toString().replaceAll('{jugador}', jugadorGlobal);
    case Idioma.es:
      return es[key].toString().replaceAll('{jugador}', jugadorGlobal);
    default:
      return es[key] ?? '';
  }
}
