import 'package:flutter/material.dart';
//import 'package:flutter_gifimage/flutter_gifimage.dart';

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
              image:
                  NetworkImage(
                "https://media.giphy.com/media/ICOgUNjpvO0PC/giphy.gif",
              ),
              
                  // NetworkImage(
                  //   "https://miro.medium.com/v2/resize:fit:1400/format:webp/1*Dj3lfs60uIeDCVkTS-ztCQ.gif",
                  // ),
                         
                                // NetworkImage(
                  //   "https://miro.medium.com/v2/resize:fit:1400/format:webp/1*Dj3lfs60uIeDCVkTS-ztCQ.gif",
                  // ),

              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}