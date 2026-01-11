import 'package:warden/data/historia/bree_textos.dart';

import 'package:warden/game/entities/nodo.dart';
import 'package:warden/global/variables.dart';
import 'package:warden/main.dart';

import '../../game/entities/enums.dart';

final Map<String, StoryNode> pantallasBree = {
  // =====================================================
  // NIVEL 0 (1)
  // =====================================================
  "bree.nodo.inicio": StoryNode(
    texto1: _th('bree.nodo.inicio.texto1'),
    imagen: 'bree01',
    texto2: _th('bree.nodo.inicio.texto2'),
    botones: [
      Choice(texto: _th('bree.boton.1'), pantallaDestino: 'bree.nodo.0.1'),
      Choice(texto: _th('bree.boton.2'), pantallaDestino: 'bree.nodo.0.2'),
    ],
  ),

  // =====================================================
  // NIVEL 1 (2)
  // =====================================================
  //comenzar aventura
  "bree.nodo.0.1": StoryNode(
    texto1: _th('bree.nodo.0.1.texto1'),
    imagen: 'bree02',
    texto2: _th('bree.nodo.0.1.texto2'),
    botones: [
      Choice(
        texto: _th('bree.boton.continuar'),
        pantallaDestino: 'bree.nodo.0.1.1',
      ),
    ],
  ),

  //volver a la aldea
  "bree.nodo.0.2": StoryNode(
    texto1: _th('bree.nodo.0.2.texto1'),
    imagen: 'bree03',
    texto2: _th('bree.nodo.0.2.texto2'),
    botones: [
      Choice(
        texto: _th('bree.boton.continuar'),
        pantallaDestino: 'bree.nodo.0.1',
      ),
    ],
  ),

  // =====================================================
  // NIVEL 2 (4)
  // =====================================================
  "bree.nodo.0.1.1": StoryNode(
    texto1: _th('bree.nodo.0.1.1.texto1'),
    imagen: 'bree04',
    texto2: _th('bree.nodo.0.1.1.texto2'),
    botones: [
      Choice(texto: 'bree.nodo.0.1.1.1', pantallaDestino: 'bree.nodo.0.1.1.1'),
      Choice(texto: 'bree.nodo.0.1.1.2', pantallaDestino: 'bree.nodo.0.1.1.2'),
    ],
  ),

  "bree.nodo.0.1.2": StoryNode(
    texto1: _th('bree.nodo.0.1.2.texto1'),
    imagen: 'bree05',
    texto2: _th('bree.nodo.0.1.2.texto2'),
    botones: [
      Choice(texto: 'bree.nodo.0.1.2.1', pantallaDestino: 'bree.nodo.0.1.2.1'),
      Choice(texto: 'bree.nodo.0.1.2.2', pantallaDestino: 'bree.nodo.0.1.2.2'),
    ],
  ),

  "bree.nodo.0.2.1": StoryNode(
    texto1: _th('bree.nodo.0.2.1.texto1'),
    imagen: 'bree06',
    texto2: _th('bree.nodo.0.2.1.texto2'),
    botones: [
      Choice(texto: 'bree.nodo.0.2.1.1', pantallaDestino: 'bree.nodo.0.2.1.1'),
      Choice(texto: 'bree.nodo.0.2.1.2', pantallaDestino: 'bree.nodo.0.2.1.2'),
    ],
  ),

  "bree.nodo.0.2.2": StoryNode(
    texto1: _th('bree.nodo.0.2.2.texto1'),
    imagen: 'bree07',
    texto2: _th('bree.nodo.0.2.2.texto2'),
    botones: [
      Choice(texto: 'bree.nodo.0.2.2.1', pantallaDestino: 'bree.nodo.0.2.2.1'),
      Choice(texto: 'bree.nodo.0.2.2.2', pantallaDestino: 'bree.nodo.0.2.2.2'),
    ],
  ),

  // =====================================================
  // NIVEL 3 (8)
  // =====================================================
  "bree.nodo.0.1.1.1": StoryNode(
    texto1: _th('bree.nodo.0.1.1.1.texto1'),
    imagen: 'bree08',
    texto2: _th('bree.nodo.0.1.1.1.texto2'),
    botones: [
      Choice(
        texto: 'bree.nodo.0.1.1.1.1',
        pantallaDestino: 'bree.nodo.0.1.1.1.1',
      ),
      Choice(
        texto: 'bree.nodo.0.1.1.1.2',
        pantallaDestino: 'bree.nodo.0.1.1.1.2',
      ),
    ],
  ),

  "bree.nodo.0.1.1.2": StoryNode(
    texto1: _th('bree.nodo.0.1.1.2.texto1'),
    imagen: 'bree09',
    texto2: _th('bree.nodo.0.1.1.2.texto2'),
    botones: [
      Choice(
        texto: 'bree.nodo.0.1.1.2.1',
        pantallaDestino: 'bree.nodo.0.1.1.2.1',
      ),
      Choice(
        texto: 'bree.nodo.0.1.1.2.2',
        pantallaDestino: 'bree.nodo.0.1.1.2.2',
      ),
    ],
  ),

  "bree.nodo.0.1.2.1": StoryNode(
    texto1: _th('bree.nodo.0.1.2.1.texto1'),
    imagen: 'bree10',
    texto2: _th('bree.nodo.0.1.2.1.texto2'),
    botones: [
      Choice(
        texto: 'bree.nodo.0.1.2.1.1',
        pantallaDestino: 'bree.nodo.0.1.2.1.1',
      ),
      Choice(
        texto: 'bree.nodo.0.1.2.1.2',
        pantallaDestino: 'bree.nodo.0.1.2.1.2',
      ),
    ],
  ),

  "bree.nodo.0.1.2.2": StoryNode(
    texto1: _th('bree.nodo.0.1.2.2.texto1'),
    imagen: 'bree11',
    texto2: _th('bree.nodo.0.1.2.2.texto2'),
    botones: [
      Choice(
        texto: 'bree.nodo.0.1.2.2.1',
        pantallaDestino: 'bree.nodo.0.1.2.2.1',
      ),
      Choice(
        texto: 'bree.nodo.0.1.2.2.2',
        pantallaDestino: 'bree.nodo.0.1.2.2.2',
      ),
    ],
  ),

  "bree.nodo.0.2.1.1": StoryNode(
    texto1: _th('bree.nodo.0.2.1.1.texto1'),
    imagen: 'bree12',
    texto2: _th('bree.nodo.0.2.1.1.texto2'),
    botones: [
      Choice(
        texto: 'bree.nodo.0.2.1.1.1',
        pantallaDestino: 'bree.nodo.0.2.1.1.1',
      ),
      Choice(
        texto: 'bree.nodo.0.2.1.1.2',
        pantallaDestino: 'bree.nodo.0.2.1.1.2',
      ),
    ],
  ),

  "bree.nodo.0.2.1.2": StoryNode(
    texto1: _th('bree.nodo.0.2.1.2.texto1'),
    imagen: 'bree13',
    texto2: _th('bree.nodo.0.2.1.2.texto2'),
    botones: [
      Choice(
        texto: 'bree.nodo.0.2.1.2.1',
        pantallaDestino: 'bree.nodo.0.2.1.2.1',
      ),
      Choice(
        texto: 'bree.nodo.0.2.1.2.2',
        pantallaDestino: 'bree.nodo.0.2.1.2.2',
      ),
    ],
  ),

  "bree.nodo.0.2.2.1": StoryNode(
    texto1: _th('bree.nodo.0.2.2.1.texto1'),
    imagen: 'bree14',
    texto2: _th('bree.nodo.0.2.2.1.texto2'),
    botones: [
      Choice(
        texto: 'bree.nodo.0.2.2.1.1',
        pantallaDestino: 'bree.nodo.0.2.2.1.1',
      ),
      Choice(
        texto: 'bree.nodo.0.2.2.1.2',
        pantallaDestino: 'bree.nodo.0.2.2.1.2',
      ),
    ],
  ),

  "bree.nodo.0.2.2.2": StoryNode(
    texto1: _th('bree.nodo.0.2.2.2.texto1'),
    imagen: 'bree15',
    texto2: _th('bree.nodo.0.2.2.2.texto2'),
    botones: [
      Choice(
        texto: 'bree.nodo.0.2.2.2.1',
        pantallaDestino: 'bree.nodo.0.2.2.2.1',
      ),
      Choice(
        texto: 'bree.nodo.0.2.2.2.2',
        pantallaDestino: 'bree.nodo.0.2.2.2.2',
      ),
    ],
  ),

  // =====================================================
  // NIVEL 4 (16 hojas → convergencia)
  // =====================================================
  // Todas estas solo continúan, aquí luego meterás combate/eventos
  "bree.nodo.0.1.1.1.1": StoryNode(
    texto1: _th('bree.nodo.0.1.1.1.1.texto1'),
    imagen: 'bree16',
    texto2: _th('bree.nodo.0.1.1.1.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.1')],
  ),
  "bree.nodo.0.1.1.1.2": StoryNode(
    texto1: _th('bree.nodo.0.1.1.1.2.texto1'),
    imagen: 'bree17',
    texto2: _th('bree.nodo.0.1.1.1.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.1')],
  ),

  "bree.nodo.0.1.1.2.1": StoryNode(
    texto1: _th('bree.nodo.0.1.1.2.1.texto1'),
    imagen: 'bree18',
    texto2: _th('bree.nodo.0.1.1.2.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.2')],
  ),
  "bree.nodo.0.1.1.2.2": StoryNode(
    texto1: _th('bree.nodo.0.1.1.2.2.texto1'),
    imagen: 'bree19',
    texto2: _th('bree.nodo.0.1.1.2.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.2')],
  ),

  "bree.nodo.0.1.2.1.1": StoryNode(
    texto1: _th('bree.nodo.0.1.2.1.1.texto1'),
    imagen: 'bree20',
    texto2: _th('bree.nodo.0.1.2.1.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.3')],
  ),
  "bree.nodo.0.1.2.1.2": StoryNode(
    texto1: _th('bree.nodo.0.1.2.1.2.texto1'),
    imagen: 'bree21',
    texto2: _th('bree.nodo.0.1.2.1.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.3')],
  ),

  "bree.nodo.0.1.2.2.1": StoryNode(
    texto1: _th('bree.nodo.0.1.2.2.1.texto1'),
    imagen: 'bree22',
    texto2: _th('bree.nodo.0.1.2.2.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.4')],
  ),
  "bree.nodo.0.1.2.2.2": StoryNode(
    texto1: _th('bree.nodo.0.1.2.2.2.texto1'),
    imagen: 'bree23',
    texto2: _th('bree.nodo.0.1.2.2.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.4')],
  ),

  "bree.nodo.0.2.1.1.1": StoryNode(
    texto1: _th('bree.nodo.0.2.1.1.1.texto1'),
    imagen: 'bree24',
    texto2: _th('bree.nodo.0.2.1.1.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.5')],
  ),
  "bree.nodo.0.2.1.1.2": StoryNode(
    texto1: _th('bree.nodo.0.2.1.1.2.texto1'),
    imagen: 'bree25',
    texto2: _th('bree.nodo.0.2.1.1.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.5')],
  ),

  "bree.nodo.0.2.1.2.1": StoryNode(
    texto1: _th('bree.nodo.0.2.1.2.1.texto1'),
    imagen: 'bree26',
    texto2: _th('bree.nodo.0.2.1.2.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.6')],
  ),
  "bree.nodo.0.2.1.2.2": StoryNode(
    texto1: _th('bree.nodo.0.2.1.2.2.texto1'),
    imagen: 'bree27',
    texto2: _th('bree.nodo.0.2.1.2.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.6')],
  ),

  "bree.nodo.0.2.2.1.1": StoryNode(
    texto1: _th('bree.nodo.0.2.2.1.1.texto1'),
    imagen: 'bree28',
    texto2: _th('bree.nodo.0.2.2.1.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.7')],
  ),
  "bree.nodo.0.2.2.1.2": StoryNode(
    texto1: _th('bree.nodo.0.2.2.1.2.texto1'),
    imagen: 'bre29',
    texto2: _th('bree.nodo.0.2.2.1.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.7')],
  ),

  "bree.nodo.0.2.2.2.1": StoryNode(
    texto1: _th('bree.nodo.0.2.2.2.1.texto1'),
    imagen: 'bree30',
    texto2: _th('bree.nodo.0.2.2.2.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.8')],
  ),
  "bree.nodo.0.2.2.2.2": StoryNode(
    texto1: _th('bree.nodo.0.2.2.2.2.texto1'),
    imagen: 'bree31',
    texto2: _th('bree.nodo.0.2.2.2.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.8')],
  ),

  // =====================================================
  // CONVERGENCIA (8 → 4 → 2 → 1)
  // =====================================================
  "bree.merge.1": StoryNode(
    texto1: _th('bree.merge.1.texto1'),
    imagen: 'bree32',
    texto2: _th('bree.merge.1.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.a')],
  ),
  "bree.merge.2": StoryNode(
    texto1: _th('bree.merge.2.texto1'),
    imagen: 'bree33',
    texto2: _th('bree.merge.2.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.a')],
  ),

  "bree.merge.3": StoryNode(
    texto1: _th('bree.merge.3.texto1'),
    imagen: 'bree34',
    texto2: _th('bree.merge.3.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.b')],
  ),
  "bree.merge.4": StoryNode(
    texto1: _th('bree.merge.4.texto1'),
    imagen: 'bree35',
    texto2: _th('bree.merge.4.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.b')],
  ),

  "bree.merge.5": StoryNode(
    texto1: _th('bree.merge.5.texto1'),
    imagen: 'bree36',
    texto2: _th('bree.merge.5.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.c')],
  ),
  "bree.merge.6": StoryNode(
    texto1: _th('bree.merge.6.texto1'),
    imagen: 'bree37',
    texto2: _th('bree.merge.6.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.c')],
  ),

  "bree.merge.7": StoryNode(
    texto1: _th('bree.merge.7.texto1'),
    imagen: 'bree38',
    texto2: _th('bree.merge.7.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.d')],
  ),
  "bree.merge.8": StoryNode(
    texto1: _th('bree.merge.8.texto1'),
    imagen: 'bree39',
    texto2: _th('bree.merge.8.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.d')],
  ),

  "bree.merge.a": StoryNode(
    texto1: _th('bree.merge.a.texto1'),
    imagen: 'bree40',
    texto2: _th('bree.merge.a.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.x')],
  ),
  "bree.merge.b": StoryNode(
    texto1: _th('bree.merge.b.texto1'),
    imagen: 'bree41',
    texto2: _th('bree.merge.b.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.x')],
  ),

  "bree.merge.c": StoryNode(
    texto1: _th('bree.merge.c.texto1'),
    imagen: 'bree42',
    texto2: _th('bree.merge.c.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.y')],
  ),
  "bree.merge.d": StoryNode(
    texto1: _th('bree.merge.d.texto1'),
    imagen: 'bree43',
    texto2: _th('bree.merge.d.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.merge.y')],
  ),

  "bree.merge.x": StoryNode(
    texto1: _th('bree.merge.x.texto1'),
    imagen: 'bree44',
    texto2: _th('bree.merge.x.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.nodo.final')],
  ),
  "bree.merge.y": StoryNode(
    texto1: _th('bree.merge.y.texto1'),
    imagen: 'bree45',
    texto2: _th('bree.merge.y.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.nodo.final')],
  ),

  // =====================================================
  // FINAL (1)
  // =====================================================
  "bree.nodo.final": StoryNode(
    texto1: _th('bree.nodo.final.texto1'),
    imagen: 'bree46',
    texto2: _th('bree.nodo.final.texto2'),
    botones: [Choice(texto: 'Continuar', pantallaDestino: 'bree.nodo.0')],
  ),
};

String _th(String key) {
  final idioma = preferencesController.current.idioma;
  switch (idioma) {
    case Idioma.es:
      return es[key].toString().replaceAll('{jugador}', jugadorGlobal);
    case Idioma.en:
      return en[key].toString().replaceAll('{jugador}', jugadorGlobal);
    default:
      return es[key] ?? '';
  }
}
