Map<String, dynamic> normalizeMap(dynamic raw) {
  if (raw is Map) {
    // Copia a un nuevo Map mutable con claves String
    return Map<String, dynamic>.from(raw);
  }
  throw ArgumentError('Se esperaba un Map, llegó: ${raw.runtimeType}');
}

//Convierte una lista dinámica a List<Map<String, dynamic>> de forma segura.
List<Map<String, dynamic>> normalizeChoicesList(dynamic raw) {
  final list = (raw as List<dynamic>? ?? const []);
  return list.map((e) => normalizeMap(e)).toList();
}
