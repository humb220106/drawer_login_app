import 'package:flutter/material.dart';

// for drawer navigation

class logout extends StatelessWidget {
  const logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Logout"),
        backgroundColor: Colors.green,
      ),
      body: const Center(child: Text("Log out from this page")),
    );
  }
}