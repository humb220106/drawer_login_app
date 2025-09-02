import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

Future<void> _sendingMails() async {
  var url = Uri.parse("mailto:ogunmuyiwai64@gmail.com");

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> _sendingSMS() async {
  var url = Uri.parse("sms:+234 9065162535");

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MAIL AND SMS'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(height: 200.0),
                const Text(
                  'Welcome to HUMB-TECH',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(height: 20.0),
                const Text(
                  'For any Queries, Mail us',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(255, 95, 32, 213),
                  ),
                ),
                Container(height: 10.0),
                ElevatedButton(
                  onPressed: _sendingMails,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 10, 134, 150),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Here'),
                ), // ElevatedButton

                Container(height: 20.0),
                const Text(
                  'Or Send SMS',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(255, 44, 163, 210),
                  ),
                ),
                Container(height: 10.0),
                ElevatedButton(
                  onPressed: _sendingSMS,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Here'),
                ), // ElevatedButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}