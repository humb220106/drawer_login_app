import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("F - Builder")),
        body: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("The Class is going on")),
                );
              },

              
              child: const Text("Show SnackBar"),
              
            ),
          ),
        ),
      ),
    );
  }
}