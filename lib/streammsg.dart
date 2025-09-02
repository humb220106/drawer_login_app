import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Streamer(),
    );
  }
}

class Streamer extends StatefulWidget {
  const Streamer({super.key});

  @override
  State<Streamer> createState() => _StreamerState();
}

class _StreamerState extends State<Streamer> {
  late Stream<String> _messageStream;
  final List<String> _messages = []; // store all messages

  @override
  void initState() {
    super.initState();
    _startStream();
  }

  void _startStream() {
    setState(() {
      _messages.clear(); // reset old messages
      _messageStream = messageStream();
    });
  }

  Stream<String> messageStream() async* {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      yield "YOU ARE WELCOME BACK TO CLASS ($i)";
    }
  }

  void _showToast() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Mail Sent!"),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Streamer Message")),
      body: StreamBuilder<String>(
        stream: _messageStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (!_messages.contains(snapshot.data)) {
              _messages.add(snapshot.data!); // add new message

              // show toast when the 10th message is received
              if (_messages.length == 10) {
                Future.delayed(Duration.zero, _showToast);
              }
            }
          }

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        _messages[index],
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (_messages.length == 10) // Restart button after last message
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: _startStream,
                    child: const Text("Restart"),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}