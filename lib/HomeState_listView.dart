import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  List<Widget> createItems(int count) {
    List<Widget> items = <Widget>[];
    for (var i = 0; i < count; i++) {
      items.add(ListTile(
        title: Text('Item ${i + 1}'),
        leading: const Icon(Icons.star),
        trailing: const Icon(Icons.delete),
      ));
      items.add(
        const Divider(color: Colors.black26),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: createItems(20),
      ),
    );
  }
}


