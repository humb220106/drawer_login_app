import 'package:flutter/material.dart';
// for drawer navigation

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        backgroundColor: Colors.green,
      ),
      body: const Center(child: Text("Edit my Profile")),
    );
  }
}