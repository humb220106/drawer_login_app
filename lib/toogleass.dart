import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Default theme mode
  ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Light and Dark Theme',

      // for Light Theme
      theme: ThemeData(primarySwatch: Colors.teal),

      // for Dark Theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.white70),
        ),
      ),

      // select theme
      themeMode: _themeMode,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Switch"),
          actions: [
            Switch(
              value: _themeMode == ThemeMode.dark,
              onChanged: (value) {
                setState(() {
                  _themeMode = value ? ThemeMode.dark : ThemeMode.light;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_themeMode == ThemeMode.light)
                Image.asset(
                  'assets/x cover page.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              Text(
                "Press the switch in RHS to toggle theme.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}