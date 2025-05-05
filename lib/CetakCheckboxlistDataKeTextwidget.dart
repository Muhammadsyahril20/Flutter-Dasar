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
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal1,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal1 = value!;

                      if(this._checkboxVal1==true){
                        list.add('python');
                      }else{
                        list.remove('python');
                      }

                      showData();
                    });
                  },
                ),
                const Text('python'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal2,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal2 = value!;

                      if(this._checkboxVal2==true){
                        list.add('Javascript');
                      } else{
                        list.remove('JavaScript');
                      }
                      showData();
                    });
                  },
                ),
                const Text('javaScript'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal3,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal3 = value!;
                      if(this._checkboxVal3==true){
                        list.add('PHP');
                      } else{
                        list.remove('PHP');
                      }
                      showData();
                    });
                  },
                ),
                const Text('php'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal4,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal4 = value!;
                      if(this._checkboxVal4==true){
                        list.add('Java');
                      } else{
                        list.remove('Java');
                      }
                      showData();
                    });
                  },
                ),
                const Text('java'),
              ],
            ),
            Text('Data:$text'),
          ],
        ),
      ),
    );
  }
}

