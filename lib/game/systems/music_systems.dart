import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:warden/main.dart';

class MusicSystem {
  static final AudioPlayer _musicPlayer = AudioPlayer();
  static bool _initialized = false;
  static bool _wasPlaying = false;

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

  static Future<void> play(String tipo) async {
    if (!preferencesController.current.musica!) return;
    if (kIsWeb) return;

    final random = Random();
    int num = random.nextInt(6);
    String str = num.toString().padLeft(2, '0');
    await _init();
    await _musicPlayer.setVolume(0);
    await _musicPlayer.play(AssetSource('audio/sfx/$tipo$str.mp3'));
    await _musicPlayer.setVolume(0.4);
    _wasPlaying = true;
  }

  static Future<void> pause() async {
    if (!_initialized) return;
    if (_musicPlayer.state == PlayerState.playing) {
      _wasPlaying = true;
      await _musicPlayer.pause();
    }
  }

  static Future<void> resumeIfNeeded() async {
    if (!_initialized) return;
    if (_wasPlaying && _musicPlayer.state == PlayerState.paused) {
      await _musicPlayer.resume();
    }
  }

  static Future<void> stop() async {
    if (!_initialized) return;
    _wasPlaying = false;
    await _musicPlayer.stop();
  }
}
