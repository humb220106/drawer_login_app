import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ToastPage());
  }
}

class ToastPage extends StatelessWidget {
  // Function to show toast
  void showToast() {
    Fluttertoast.showToast(
      msg: "Welcome back to class",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toast Notification")),
      body: Center(
        child: ElevatedButton(onPressed: showToast, child: Text("Show Toast")),
      ),
    );
  }
}