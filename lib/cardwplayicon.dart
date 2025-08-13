import 'package:flutter/material.dart';
import 'Editprofile.dart';
import 'Logout.dart';

void main() => runApp(const Myprofile());

/// Main application widget
class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Card')),
        backgroundColor: Colors.yellow,
        body: const MyCardWidget(),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        padding: const EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.red,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album, size: 60, color: Colors.white),
                title: Text(
                  'Tinubu Goodluck',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
                subtitle: Text(
                  'Best of Tinubu G. Music.',
                  style: TextStyle(fontSize: 16.0, color: Colors.white70),
                ),
              ),
              OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Edit()),
                );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    icon: const Icon(Icons.play_arrow, color: Colors.white),
                    label: const Text('Play'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const logout()),
                );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    icon: const Icon(Icons.pause, color: Colors.white),
                    label: const Text('Pause'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} 