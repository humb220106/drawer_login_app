import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Audio());
    
  }
}

class Audio extends StatefulWidget {
  const Audio({super.key});

  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  final player = AudioPlayer();

  void playAudio() {
    player.play(AssetSource("audio/whylove.mp3"));
  }

  void stopAudio() {
    player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Music - Audio Player")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: playAudio,
              child: const Text("Play Audio"),
            ),
            ElevatedButton(
              onPressed: stopAudio,
              child: const Text("Stop Audio"),
            ),
          ],
        ),
      ),
    );
  }
}