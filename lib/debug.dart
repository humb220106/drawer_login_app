import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Common MaterialApp properties
      debugShowCheckedModeBanner: false, 
      title: "Demo App",                
      theme: ThemeData.light(),         
      darkTheme: ThemeData.dark(),      
      themeMode: ThemeMode.light,

      // 🔹 First screen (home page)
      home: Scaffold(
        appBar: AppBar(title: const Text("DEBUGGER")),
        body: const Center(
          child: Text(
            "DEBUGGER ROMOVED",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}