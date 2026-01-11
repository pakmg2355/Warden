import 'package:warden/data/historia/bree_pantallas.dart';
import 'package:warden/game/entities/nodo.dart';

StoryNode? getNode(String id) {
  return modoHistoria[id];
}

final modoHistoria = <String, StoryNode>{...pantallasBree};
