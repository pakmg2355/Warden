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
  switch (idioma) {
    case Idioma.en:
      return en[key] ?? '';
    case Idioma.es:
      return es[key] ?? '';
    default:
      return es[key] ?? '';
  }
}
