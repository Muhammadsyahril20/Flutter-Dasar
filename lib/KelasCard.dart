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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _count = 20;
  final List<bool> _items = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _count; i++) {
      _items.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(5.0),
        itemCount: _count,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: GestureDetector(
              onTap: () {
                print('Anda memilih item ${index + 1}');
              },
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text('Item ${index + 1}'),
                trailing: const Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
    );
  }
}


