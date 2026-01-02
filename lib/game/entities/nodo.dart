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
    this.enemigo,
    this.combateGana,
    this.combatePierde,
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
  final String id;
  final String texto;
  final List<Choice> botones;
  StoryNode({required this.texto, required this.botones, required this.id});

  /// Acepta cualquier estructura Map-like y la normaliza.
  factory StoryNode.fromAny(dynamic any) {
    final map = normalizeMap(any);
    final choicesList = normalizeChoicesList(map['botones']);
    return StoryNode(
      id: map['id'],
      texto: map['texto'] as String,
      botones: choicesList.map(Choice.fromAny).toList(),
    );
  }
}
