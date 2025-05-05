import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Radio Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const Home(title: 'Flutter Radio Button Demo Home Page'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selected = -1;
  String _jenisKelamin = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percobaan Menggunakan Widget')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text('Jenis Kelamin:'),
            Row(
              children: <Widget>[
                Radio<int>(
                  value: 0,
                  groupValue: _selected,
                  onChanged: (int? value) {
                    setState(() {
                      _selected = value!;
                      _jenisKelamin = 'Laki-laki';
                    });
                  },
                ),
                const Text('Laki-laki'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio<int>(
                  value: 1,
                  groupValue: _selected,
                  onChanged: (int? value) {
                    setState(() {
                      _selected = value!;
                      _jenisKelamin = 'Perempuan';
                    });
                  },
                ),
                const Text('Perempuan'),
              ],
            ),
            const SizedBox(height: 20),
            Text('Anda memilih : $_jenisKelamin'),
          ],
        ),
      ),
    );
  }
}
