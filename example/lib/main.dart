import 'package:flutter/material.dart';
import 'package:flutter_media_player/flutter_media_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              TextButton(
                onPressed: FlutterMediaPlayer.startSound,
                child: Text('Play Sound'),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: FlutterMediaPlayer.stopSound,
                child: Text('Stop Sound'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
