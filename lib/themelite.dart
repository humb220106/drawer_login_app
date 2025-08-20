import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main App Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes debug banner
      title: 'Light Theme',

      theme: ThemeData(
        brightness: Brightness.light,

        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ),

      // Home Screen
      home: Scaffold(
        appBar: AppBar(title: const Text("Light Theme Design")),
        body: Center(
          child: Text("LIGHT THEME", style: TextStyle(color: Colors.red)),
        ),
      ),
    );
  }
}