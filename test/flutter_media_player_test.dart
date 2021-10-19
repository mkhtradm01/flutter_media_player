import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_media_player/flutter_media_player.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_media_player');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('startSound', () async {
    expect(FlutterMediaPlayer.startSound, '42');
  });
}
