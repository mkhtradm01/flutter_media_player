import 'dart:async';

import 'package:flutter/services.dart';

class FlutterMediaPlayer {
  static const MethodChannel _channel = MethodChannel('flutter_media_player');

  static Future<void> startSound() async {
    await _channel.invokeMethod('startSound');
  }

  static Future<void> stopSound() async {
    await _channel.invokeMethod('stopSound');
  }
}
