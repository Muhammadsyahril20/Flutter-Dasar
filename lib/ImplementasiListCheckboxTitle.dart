import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // warna tombol
            foregroundColor: Colors.white, // warna teks tombol
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // warna AppBar
          foregroundColor: Colors.white, // warna teks AppBar
        ),
      ),
      home: const Home(title: 'Flutter Demo Home Page'),
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
  bool _checkboxVal1 = false;
  bool _checkboxVal2 = false;
  bool _checkboxVal3 = false;
  bool _checkboxVal4 = false;
  List<String>list=[];
  String text='';
  void showData(){
    text='';
    for (int i = 0; i < list.length; i++) {
      text += '${list[i]} ,  ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text('Bahasa pemrograman yang dikuasai:'),

            CheckboxListTile(
              value: _checkboxVal1,
              title:const Text('python'),
              activeColor: Colors.greenAccent,
              secondary:const Icon(Icons.language),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal1 = value!;
                });
                if(this._checkboxVal1==true){
                  list.add('python');
                }else{
                  list.remove('python');
                }

                showData();

              },
            ),


            CheckboxListTile(
              value: _checkboxVal1,
              title:const Text('JavaScript'),
              activeColor: Colors.greenAccent,
              secondary:const Icon(Icons.language),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal1 = value!;
                });
                if(this._checkboxVal1==true){
                  list.add('JavaScript');
                }else{
                  list.remove('JavaScript');
                }

                showData();

              },
            ),
            CheckboxListTile(
              value: _checkboxVal1,
              title:const Text('PHP'),
              activeColor: Colors.greenAccent,
              secondary:const Icon(Icons.language),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal1 = value!;
                });
                if(this._checkboxVal1==true){
                  list.add('PHP');
                }else{
                  list.remove('PHP');
                }

                showData();

              },
            ),
            CheckboxListTile(
              value: _checkboxVal1,
              title:const Text('Java'),
              activeColor: Colors.greenAccent,
              secondary:const Icon(Icons.language),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal1 = value!;
                });
                if(this._checkboxVal1==true){
                  list.add('Java');
                }else{
                  list.remove('Java');
                }

                showData();

              },
            ),
            Text('Data:$text'),
          ],
        ),
      ),
    );
  }
}
