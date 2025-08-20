import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Table Design',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TableWork(),
    );
  }
}

class TableWork extends StatelessWidget {
  const TableWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table Modification"),
        centerTitle: true,
      ),
      body: Center(    

        child: FractionallySizedBox(
          widthFactor: 0.5, // 50% / 100 = 0.5
            
          child: Table(
            border: TableBorder.all(
              width: 1,
              color: Colors.red,
                
            ),

            children: [
              // Header row
              TableRow(
                children: [
                  Text(
                    "Name",
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Subject",
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Marks",
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              // Data rows
              TableRow(
                children: [
                  Text("Alex", textScaleFactor: 1.5, textAlign: TextAlign.center),
                  Text("Maths", textScaleFactor: 1.5, textAlign: TextAlign.center),
                  Text("98", textScaleFactor: 1.5, textAlign: TextAlign.center),
                ],
              ),
              TableRow(
                children: [
                  Text("Henry", textScaleFactor: 1.5, textAlign: TextAlign.center),
                  Text("Chemistry", textScaleFactor: 1.5, textAlign: TextAlign.center),
                  Text("35", textScaleFactor: 1.5, textAlign: TextAlign.center),
                ],
              ),
              TableRow(
                children: [
                  Text("Luke", textScaleFactor: 1.5, textAlign: TextAlign.center),
                  Text("Physics", textScaleFactor: 1.5, textAlign: TextAlign.center),
                  Text("40", textScaleFactor: 1.5, textAlign: TextAlign.center),
                ],
              ),
            ],
          ),
        ),  
      ),
    );
  }
}