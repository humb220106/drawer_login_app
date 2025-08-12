import 'package:flutter/material.dart';
void main() => runApp(const MyCard());

/// Main application widget
class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Card')),
        backgroundColor: Colors.white,
        body: const MyCardWidget(),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key}) : super(key: key); // Null safety fix

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 300,
        padding: const EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.lightBlue,
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
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("Play pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Play'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("Pause pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Pause'),
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