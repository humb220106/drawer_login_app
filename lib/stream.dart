import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Streamer());
  }
}

class Streamer extends StatelessWidget {
  const Streamer({super.key});

  
  Stream<int> numberStream() async* {
    int i = 1;
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield i++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Streamer")),
      body: Center(
        child: StreamBuilder<int>(
          stream: numberStream(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            }
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }
            return Text(
              "Number: ${snapshot.data}",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}