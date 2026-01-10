import 'package:warden/data/historia/01pantallas_bree.dart';
import 'package:warden/game/entities/nodo.dart';

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
StoryNode? getNode(String id) {
  return modoHistoria[id];
}

final modoHistoria = <String, StoryNode>{...pantallasBree};
