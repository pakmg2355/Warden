import 'package:warden/game/helpers/maps.dart';

class Choice {
  final String texto;
  final String pantallaDestino;
  final int? enemigo;
  final String? combateGana;
  final String? combatePierde;

  Choice({
    required this.texto,
    required this.pantallaDestino,
    this.enemigo = 0,
    this.combateGana = '',
    this.combatePierde = '',
  });

  factory Choice.fromAny(dynamic any) {
    final map = normalizeMap(any);
    return Choice(
      texto: map['texto'] as String,
      pantallaDestino: map['pantalla_destino'],
      enemigo: map['enemigo'] as int,
      combateGana: map['combate_gana'],
      combatePierde: map['combate_pierde'],
    );
  }
}

class StoryNode {
  final String texto1;
  final String imagen;
  final String texto2;
  final List<Choice> botones;
  StoryNode({
    this.texto1 = '',
    this.texto2 = '',
    this.imagen = '',
    this.botones = const [],
  });

  /// Acepta cualquier estructura Map-like y la normaliza.
  factory StoryNode.fromAny(dynamic any) {
    final map = normalizeMap(any);
    final choicesList = normalizeChoicesList(map['botones']);
    return StoryNode(
      texto1: map['texto1'] as String,
      texto2: map['texto2'] as String,
      imagen: map['imagen'] as String,
      botones: choicesList.map(Choice.fromAny).toList(),
    );
  }
}
