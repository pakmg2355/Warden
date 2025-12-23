import 'package:warden/main.dart';

String fontForPreferences() {
  return preferencesController.current.getEscritura!.name.toString();
}
