import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';

class SendMailPage extends StatelessWidget {
  const SendMailPage({super.key});

  Future<void> sendMail() async {
    String username = 'ogunmuyiwai64@gmail.com';
    String password =
        'iufg qkfq gqmx llpu'; // Use App Password, not Gmail password!

    final smtpServer = gmail(username, password);

    final message = Message()
      ..from = Address(username, 'Flutter App')
      ..recipients.add('ogunmuyiwai64@gmail.com')
      ..subject = 'Hello from Flutter'
      ..text = 'This is a test email sent from Flutter app.';

    try {
      final sendReport = await send(message, smtpServer);
      
      print('Message sent: $sendReport');
    } catch (e) {
      print('Message not sent. Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Send Mail")),
      body: Center(
        child: ElevatedButton(onPressed: sendMail, child: Text("Send Mail")),
      ),
    );
  }
}