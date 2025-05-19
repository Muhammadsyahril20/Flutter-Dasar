import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(appBar: AppBar(
        title: const Text('Contoh Tampilan Flutter'),
      ),
   
  
      body: Center(
        child: Text(
          'Rekayasa Perangkat Lunak',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            color: Colors.red,
          ),
        ),
      ),
    ),
    );

  }
}

