import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Bisa tambahin aksi di sini, misal: pencarian
              debugPrint("Search button pressed!");
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Bisa masuk ke menu pengaturan
              debugPrint("Settings button pressed!");
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    _volume += 10;
                  });
                },
              ),
              Text('Volume: $_volume'),
            ],
          ),
        ),
      ),
    );
  }
}
