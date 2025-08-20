import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              //image: AssetImage("assets/bg.jpg"),
              image: AssetImage("assets/x cover page.jpg"),
              fit: BoxFit.cover, // makes image cover whole screen
            ),
          ),
        ),
      ),
    );
  }
}