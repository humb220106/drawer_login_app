import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LocalVideoExample());
  }
}

class LocalVideoExample extends StatefulWidget {
  const LocalVideoExample({super.key});

  @override
  State<LocalVideoExample> createState() => _LocalVideoExampleState();
}

class _LocalVideoExampleState extends State<LocalVideoExample> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset("assets/media.mp4")
      ..initialize().then((_) {
        setState(() {});
        _chewieController = ChewieController(
          videoPlayerController: _videoController,
          autoPlay: false,
          looping: false,
        );
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Video with Controls")),
      body: Center(
        child:
            _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(controller: _chewieController!)
            : const CircularProgressIndicator(),
      ),
    );
  }
}