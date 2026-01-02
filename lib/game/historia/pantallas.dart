import 'package:warden/game/entities/nodo.dart';
import 'package:warden/game/historia/textos.dart';

StoryNode? getNode(String id) {
  return modoHistoria[id];
}

final modoHistoria = <String, StoryNode>{
  "entrada_puerta_bree": StoryNode(
    id: "entrada_puerta_bree",
    texto: th('texto.pantalla.003'),
    botones: [
      Choice(
        texto: "Buscar otra puerta",
        pantallaDestino: "entrada_otra_puerta",
      ),
      Choice(
        texto: "Pelear",
        enemigo: 1,
        combateGana: "victoria_bandido",
        combatePierde: "derrota_bandido",
      ),
    ],
  ),
  "entrada_otra_puerta": StoryNode(
    id: "entrada_otra_puerta",
    texto: th('texto.pantalla.004'),
    botones: [Choice(texto: "Entrar", pantallaDestino: "bree_calle_principal")],
  ),
  "victoria_bandido": StoryNode(
    id: "victoria_bandido",
    texto: th('texto.pantalla.005'),
    botones: [Choice(texto: "Seguir", pantallaDestino: "bree_calle_principal")],
  ),
  "derrota_bandido": StoryNode(
    id: "derrota_bandido",
    texto: th('texto.pantalla.100'),
    botones: [
      Choice(
        texto: "Intentar de nuevo",
        pantallaDestino: "entrada_otra_puerta",
      ),
    ],
  ),
};
