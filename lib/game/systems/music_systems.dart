import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

class MusicSystem {
  static final AudioPlayer _musicPlayer = AudioPlayer();
  static bool _initialized = false;

  static Future<void> _init() async {
    if (kIsWeb) return;
    if (_initialized) return;
    await _musicPlayer.setReleaseMode(ReleaseMode.loop);
    await _musicPlayer.setVolume(0.4);
    _initialized = true;
  }

  static Future<void> playCombat() async {
    if (kIsWeb) return;
    await _init();
    await _musicPlayer.setVolume(0);
    await _musicPlayer.play(AssetSource('assets/sfx/combate.wav'));
    await _musicPlayer.setVolume(0.4);
  }

  static Future<void> playMenu() async {
    if (kIsWeb) return;
    await _init();
    await _musicPlayer.setVolume(0);
    await _musicPlayer.play(AssetSource('assets/sfx/menu.wav'));
    await _musicPlayer.setVolume(0.4);
  }

  static Future<void> playInitScreen() async {
    if (kIsWeb) return;
    await _init();
    await _musicPlayer.setVolume(0);
    await _musicPlayer.play(AssetSource('assets/sfx/init.wav'));
    await _musicPlayer.setVolume(0.4);
  }

  static Future<void> stop() async {
    if (!_initialized) return;
    await _musicPlayer.stop();
  }
}
