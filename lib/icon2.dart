import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const IconCheatBook());

class IconCheatBook extends StatelessWidget {
  const IconCheatBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Icon CheatBook',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const IconListPage(),
    );
  }
}

class IconListPage extends StatelessWidget {
  const IconListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> materialIcons = [
      {"name": "Favorite", "icon": Icons.favorite, "color": Colors.red},
      {"name": "Quiz", "icon": Icons.quiz, "color": Colors.blue},

      {
        "name": "Emoji People",
        "icon": Icons.emoji_people,
        "color": const Color.fromARGB(255, 168, 28, 28),
      },

      {"name": "Alarm", "icon": Icons.view_agenda, "color": Colors.orange},
      {"name": "Camera", "icon": Icons.camera_alt, "color": Colors.purple},
      {"name": "Call", "icon": Icons.sync, "color": Colors.green},
      {"name": "Music", "icon": Icons.music_note, "color": Colors.pink},
      {"name": "Send", "icon": Icons.send, "color": Colors.teal},
      {"name": "Search", "icon": Icons.search, "color": Colors.indigo},
      {"name": "Shopping", "icon": Icons.shopping_cart, "color": Colors.brown},
    ];

    final List<Map<String, dynamic>> cupertinoIcons = [
      {
        "name": "Heart (iOS)",
        "icon": CupertinoIcons.heart_fill,
        "color": Colors.red,
      },
      {
        "name": "Bell (iOS)",
        "icon": CupertinoIcons.bell_fill,
        "color": Colors.blue,
      },
      {
        "name": "Person (iOS)",
        "icon": CupertinoIcons.person_fill,
        "color": Colors.green,
      },
      {
        "name": "Chat Bubble (iOS)",
        "icon": CupertinoIcons.chat_bubble_fill,
        "color": Colors.orange,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Icon CheatBook")),
      body: ListView(
        children: [
          // Material Icons Section
          ...materialIcons.map(
            (iconData) => ListTile(
              leading: Icon(
                iconData["icon"],
                color: iconData["color"],
                size: 30,
              ),
              title: Text(
                iconData["name"],
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Text(iconData["icon"].toString()),
            ),
          ),

          // Cupertino section
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Cupertino Icons",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          // Cupertino Icons Section
          ...cupertinoIcons.map(
            (iconData) => ListTile(
              leading: Icon(
                iconData["icon"],
                color: iconData["color"],
                size: 30,
              ),
              title: Text(
                iconData["name"],
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Text(iconData["icon"].toString()),
            ),
          ),
        ],
      ),
    );
  }
}