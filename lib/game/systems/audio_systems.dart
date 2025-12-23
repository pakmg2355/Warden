import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:warden/main.dart';

class AudioSystem {
  static final AudioPlayer _player = AudioPlayer();

  static bool _initialized = false;

  static Future<void> _init() async {
    if (kIsWeb) return;
    if (_initialized) return;
    if (!preferencesController.current.efectos!) return;

    await _player.setReleaseMode(ReleaseMode.stop);

    await _player.setAudioContext(
      AudioContext(
        android: AudioContextAndroid(
          isSpeakerphoneOn: true,
          stayAwake: false,
          contentType: AndroidContentType.sonification,
          usageType: AndroidUsageType.game,
          audioFocus: AndroidAudioFocus.gainTransient, // efectos cortos
        ),
      ),
    );

    _initialized = true;
  }

  static Future<void> play(String file) async {
    if (!preferencesController.current.efectos!) return;
    if (kIsWeb) return;
    await _init();
    await _player.play(AssetSource('audio/sfx/$file.wav'), volume: 0.8);
  }

  static void onCommandApplied(String comando) {
    switch (comando) {
      case '1':
        play('fist');
        break;
      case '2':
        play('shield');
        break;
      case '3':
        play('spear');
        break;
      case 'X':
        play('shield');
        break;
    }
  }
}
