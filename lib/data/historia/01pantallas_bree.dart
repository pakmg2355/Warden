import 'package:warden/game/entities/nodo.dart';
import 'package:warden/data/historia/textos.dart';

final pantallasBree = <String, StoryNode>{
  // ──────────────────────────
  // INICIO
  // ──────────────────────────
  "inicio": StoryNode(
    texto1: th('inicio.1'),
    imagen: 'inicio',
    texto2: th('inicio.2'),
    botones: [
      Choice(
        texto: th('inicio.entrarBree'),
        pantallaDestino: "bree.puerta.este",
      ),
    ],
  ),

  // ──────────────────────────
  // PUERTA ESTE
  // ──────────────────────────
  "bree.puerta.este": StoryNode(
    texto1: th('bree.puerta.este.1'),
    imagen: 'bree_puerta_este',
    texto2: th('bree.puerta.este.2'),
    botones: [
      Choice(texto: th('bree.puerta.buscarOtra'), pantallaDestino: "inicio"),
      Choice(
        texto: th('bree.puerta.pelearGuardia'),
        enemigo: 1,
        pantallaDestino: '',
        combateGana: "bree.plaza.central",
        combatePierde: "inicio",
      ),
      Choice(
        texto: th('bree.puerta.convencer'),
        pantallaDestino: "bree.plaza.central",
      ),
    ],
  ),

  // ──────────────────────────
  // PLAZA CENTRAL
  // ──────────────────────────
  "bree.plaza.central": StoryNode(
    texto1: th('bree.plaza.central.1'),
    imagen: 'bree_plaza',
    texto2: th('bree.plaza.central.2'),
    botones: [
      Choice(
        texto: th('bree.irPosada'),
        pantallaDestino: "bree.posada.entrada",
      ),
      Choice(
        texto: th('bree.irMercado'),
        pantallaDestino: "bree.mercado.entrada",
      ),
      Choice(
        texto: th('bree.hablarGuardias'),
        pantallaDestino: "bree.guardias.charla",
      ),
    ],
  ),

  // ──────────────────────────
  // POSADA
  // ──────────────────────────
  "bree.posada.entrada": StoryNode(
    texto1: th('bree.posada.entrada.1'),
    imagen: 'bree_posada',
    texto2: th('bree.posada.entrada.2'),
    botones: [
      Choice(
        texto: th('bree.hablarPosadero'),
        pantallaDestino: "bree.posada.posadero",
      ),
      Choice(
        texto: th('bree.subirHabitacion'),
        pantallaDestino: "bree.posada.habitacion",
      ),
      Choice(
        texto: th('bree.volverPlaza'),
        pantallaDestino: "bree.plaza.central",
      ),
    ],
  ),

  "bree.posada.posadero": StoryNode(
    texto1: th('bree.posada.posadero.1'),
    imagen: 'bree_posadero',
    texto2: th('bree.posada.posadero.2'),
    botones: [
      Choice(
        texto: th('bree.preguntarRumores'),
        pantallaDestino: "bree.posada.rumores",
      ),
      Choice(
        texto: th('bree.pedirTrabajo'),
        pantallaDestino: "bree.encargo.granjero",
      ),
    ],
  ),

  "bree.posada.habitacion": StoryNode(
    texto1: th('bree.posada.habitacion.1'),
    imagen: 'habitacion_posada',
    texto2: th('bree.posada.habitacion.2'),
    botones: [
      Choice(
        texto: th('bree.descansar'),
        pantallaDestino: "bree.posada.descanso",
      ),
      Choice(
        texto: th('bree.bajarPosada'),
        pantallaDestino: "bree.posada.entrada",
      ),
    ],
  ),

  "bree.posada.descanso": StoryNode(
    texto1: th('bree.posada.descanso.1'),
    imagen: 'noche_posada',
    texto2: th('bree.posada.descanso.2'),
    botones: [
      Choice(
        texto: th('bree.investigarRuido'),
        enemigo: 2,
        pantallaDestino: '',
        combateGana: "bree.posada.entrada",
        combatePierde: "bree.posada.habitacion",
      ),
      Choice(
        texto: th('bree.ignorarRuido'),
        pantallaDestino: "bree.posada.habitacion",
      ),
    ],
  ),

  // ──────────────────────────
  // MERCADO
  // ──────────────────────────
  "bree.mercado.entrada": StoryNode(
    texto1: th('bree.mercado.entrada.1'),
    imagen: 'bree_mercado',
    texto2: th('bree.mercado.entrada.2'),
    botones: [
      Choice(
        texto: th('bree.hablarComerciante'),
        pantallaDestino: "bree.mercado.comerciante",
      ),
      Choice(
        texto: th('bree.objetoRaro'),
        pantallaDestino: "bree.mercado.objetoOscuro",
      ),
      Choice(
        texto: th('bree.volverPlaza'),
        pantallaDestino: "bree.plaza.central",
      ),
    ],
  ),

  "bree.mercado.objetoOscuro": StoryNode(
    texto1: th('bree.mercado.objetoOscuro.1'),
    imagen: 'objeto_oscuro',
    texto2: th('bree.mercado.objetoOscuro.2'),
    botones: [
      Choice(
        texto: th('bree.tocarObjeto'),
        enemigo: 3,
        pantallaDestino: '',
        combateGana: "bree.mercado.entrada",
        combatePierde: "inicio",
      ),
      Choice(
        texto: th('bree.alejarse'),
        pantallaDestino: "bree.mercado.entrada",
      ),
    ],
  ),

  // ──────────────────────────
  // SALIDA DE BREE
  // ──────────────────────────
  "bree.guardias.charla": StoryNode(
    texto1: th('bree.guardias.charla.1'),
    imagen: 'guardias_bree',
    texto2: th('bree.guardias.charla.2'),
    botones: [
      Choice(texto: th('bree.salirBree'), pantallaDestino: "salida.bree"),
      Choice(texto: th('bree.quedarse'), pantallaDestino: "bree.plaza.central"),
    ],
  ),

  "salida.bree": StoryNode(
    texto1: th('salida.bree.1'),
    imagen: 'camino_salida',
    texto2: th('salida.bree.2'),
    botones: [
      Choice(
        texto: th('continuar.aventura'),
        pantallaDestino: "siguiente.zona",
      ),
    ],
  ),
};
