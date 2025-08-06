import 'package:flutter/material.dart';

// for drawer navigation

class M6Page extends StatelessWidget {
  const M6Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Course"),
        backgroundColor: Colors.green,
      ),
      body: const Center(child: Text("My Course Details")),
    );
  }
}