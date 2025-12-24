import 'package:flutter/foundation.dart';
import 'package:warden/data/models/repositorios.dart';
import 'package:warden/data/persistence/preferencias.dart';
import 'package:warden/game/enums/enums.dart';

class PreferencesController extends ChangeNotifier {
  Preferencias? _preferencias;

  Preferencias get current => _preferencias!;

  Future<void> load() async {
    _preferencias = await PreferenciasStorage.loadPreferences();

    if (_preferencias == null) {
      _preferencias = Preferencias(
        idioma: Idioma.es,
        escritura: Escritura.tolkien,
        tema: Tema.dark,
        musica: true,
        efectos: true,
      );
      await PreferenciasStorage.savePreferences(_preferencias!);
    }

    notifyListeners();
  }

  Future<void> update(Preferencias nuevas) async {
    _preferencias = nuevas;
    await PreferenciasStorage.savePreferences(nuevas);
    notifyListeners();
  }
}
