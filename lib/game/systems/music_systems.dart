import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:warden/main.dart';

class MusicSystem {
  static final AudioPlayer _musicPlayer = AudioPlayer();
  static bool _initialized = false;

  static Future<void> _init() async {
    if (!preferencesController.current.musica!) return;
    if (kIsWeb) return;
    if (_initialized) return;

    await _musicPlayer.setReleaseMode(ReleaseMode.loop);
    await _musicPlayer.setVolume(0.4);

    await _musicPlayer.setAudioContext(
      AudioContext(
        android: AudioContextAndroid(
          isSpeakerphoneOn: true,
          stayAwake: true,
          contentType: AndroidContentType.music,
          usageType: AndroidUsageType.game,
          audioFocus: AndroidAudioFocus.none, // 🔑 CLAVE
        ),
      ),
    );

    _initialized = true;
  }

  static Future<void> play() async {
    if (!preferencesController.current.musica!) return;
    if (kIsWeb) return;

    final random = Random();
    int num = random.nextInt(14);
    String str = num.toString().padLeft(2, '0');
    await _init();
    await _musicPlayer.setVolume(0);
    await _musicPlayer.play(AssetSource('audio/sfx/music$str.mp3'));
    await _musicPlayer.setVolume(0.4);
  }

  static Future<void> stop() async {
    if (!_initialized) return;
    await _musicPlayer.stop();
  }
}
