import 'package:flutter/material.dart';
// for drawer navigation

class M2Page extends StatelessWidget {
  const M2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: Colors.green,
      ),
      body: const Center(child: Text("View My Profile")),
    );
  }
}