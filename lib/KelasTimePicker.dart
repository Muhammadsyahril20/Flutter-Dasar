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
  TimeOfDay _time = TimeOfDay.now();

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? selected = await showTimePicker(
      context: context,
      initialTime: _time,
    );

    if (selected != null && selected != _time) {
      setState(() {
        _time = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan Menggunakan Widget'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Waktu yang Anda pilih: ${_time.format(context)}'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  selectTime(context);
                },
                child: const Text('Pilih Waktu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
