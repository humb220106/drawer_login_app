import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/x cover page.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Welome to My Page \n Where App can be downloaded",

                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ],
        ),
      ),
    );
  }
}