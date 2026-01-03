import 'package:warden/game/entities/nodo.dart';
import 'package:warden/game/historia/textos.dart';

StoryNode? getNode(String id) {
  return modoHistoria[id];
}

final modoHistoria = <String, StoryNode>{
  /*
  "inicio_plantilla": StoryNode(
    id: "inicio_plantilla",
    texto1: th('texto.inicio.1'),
    imagen: 'inicio',
    texto2: th('texto.inicio.2'),
    botones: [
      Choice(
        texto: "Buscar otra puerta",
        pantallaDestino: "entrada_otra_puerta",
      ),
      Choice(
        texto: "Pelear",
        pantallaDestino: '',
        enemigo: 1,
        combateGana: "victoria_bandido",
        combatePierde: "derrota_bandido",
      ),
    ],
  ),
  */
  "inicio": StoryNode(
    texto1: th('inicio.1'),
    imagen: 'inicio',
    texto2: th('inicio.2'),
    botones: [Choice(texto: "Entrar en Bree", pantallaDestino: "este_bree")],
  ),
  "este_bree": StoryNode(
    texto1: th('este.bree.1'),
    imagen: 'bree1',
    texto2: th('este.bree.2'),
    botones: [
      Choice(texto: "Buscar otra puerta", pantallaDestino: "inicio"),
      Choice(
        texto: "Pelear",
        pantallaDestino: '',
        enemigo: 1,
        combateGana: "inicio",
        combatePierde: "inicio",
      ),
    ],
  ),
};
