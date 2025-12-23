import 'package:warden/main.dart';

import '../enums/enums.dart';

const es = {
  'combo.spear.t1.id': 'SPT1',
  'combo.spear.t1.name': 'Golpe Daño 1',
  'combo.spear.t1.desc': 'Golpe Primer Combo',
};

const en = {
  'combo.spear.t1.id': 'SPT1',
  'combo.spear.t1.name': 'Spear Tier 1',
  'combo.spear.t1.desc': 'Spear first combo',
};

const tengwar = {
  'combo.spear.t1.id': 'SPT1',
  'combo.spear.t1.name': 'Spear Tier 1',
  'combo.spear.t1.desc': 'Spear first combo',
};

String t(String key) {
  final idioma = preferencesController.current.idioma;
  final escritura = preferencesController.current.escritura;

  String base;

  switch (idioma) {
    case Idioma.en:
      base = en[key] ?? '';
      break;
    case Idioma.es:
    default:
      base = es[key] ?? '';
  }

  return applyEscritura(base, escritura!);
}

String applyEscritura(String texto, Escritura escritura) {
  switch (escritura) {
    case Escritura.tengwar:
      return TengwarTranscriber.transcribe(texto);
    case Escritura.tolkien:
    // ignore: unreachable_switch_default
    default:
      return texto;
  }
}

class TengwarTranscriber {
  static const _map = {
    'a': '',
    'b': '',
    'c': '',
    // etc
  };

  static String transcribe(String input) {
    return input.toLowerCase().split('').map((c) => _map[c] ?? c).join();
  }
}
