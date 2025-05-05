import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Ganti dari runApp(Home())
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> settings = ['Data Seluler', 'Mode Pesawat', 'WiFi'];
  List<bool> settingValues = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            SwitchListTile(
              value: settingValues[0],
              title: Text(settings[0]),
              secondary: const Icon(Icons.language),
              onChanged: (bool value) {
                setState(() {
                  settingValues[0] = value;
                });
                print(settingValues);
              },
            ),
            const Divider(),
            SwitchListTile(
              value: settingValues[1],
              title: Text(settings[1]),
              secondary: const Icon(Icons.airplanemode_active),
              onChanged: (bool value) {
                setState(() {
                  settingValues[1] = value;
                });
                print(settingValues);
              },
            ),
            const Divider(),
            SwitchListTile(
              value: settingValues[2],
              title: Text(settings[2]),
              secondary: const Icon(Icons.wifi),
              onChanged: (bool value) {
                setState(() {
                  settingValues[2] = value;
                });
                print(settingValues);
              },
            ),
          ],
        ),
      ),
    );
  }
}
