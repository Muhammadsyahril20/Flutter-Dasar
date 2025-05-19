import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator UTS',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, 
          foregroundColor: Colors.black, 
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black), 
          bodyMedium: TextStyle(color: Colors.black), 
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.black), 
          border: OutlineInputBorder(),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, 
        ),
      ),
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';
  String _expression = '';

  void _calculate(String operator) {
    final double? value1 = double.tryParse(_controller1.text);
    final double? value2 = double.tryParse(_controller2.text);

    if (value1 == null || value2 == null) {
      setState(() {
        _result = 'Input tidak valid';
        _expression = '';
      });
      return;
    }

    double result;
    switch (operator) {
      case '+':
        result = value1 + value2;
        break;
      case '-':
        result = value1 - value2;
        break;
      case '*':
        result = value1 * value2;
        break;
      case '/':
        result = value2 != 0 ? value1 / value2 : double.nan;
        break;
      case '%':
        result = value1 % value2;
        break;
      case '^':
        result = pow(value1, value2).toDouble();
        break;
      case '~/':
        result = value2 != 0 ? (value1.toInt() ~/ value2.toInt()).toDouble() : double.nan;
        break;
      default:
        result = 0;
    }

    setState(() {
      if (result.isNaN) {
        _result = 'Tidak dapat membagi dengan 0';
        _expression = '';
      } else {
        _result = result.toString();
        _expression = 'Hasil $value1 $operator $value2 = $_result';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator UTS'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nilai 1',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukkan nilai pertama',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Nilai 2',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Masukkan nilai kedua',
              ),
            ),
            const SizedBox(height: 16),
           Wrap(
  spacing: 8,
  runSpacing: 8,
  children: [
    ElevatedButton(
      onPressed: () => _calculate('+'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0), 
          side: const BorderSide(color: Colors.black), 
        ),
        foregroundColor: Colors.black, 
      ),
      child: const Text('+'),
    ),
    ElevatedButton(
      onPressed: () => _calculate('-'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(color: Colors.black), 
        ),
        foregroundColor: Colors.black, 
      ),
      child: const Text('-'),
    ),
    ElevatedButton(
      onPressed: () => _calculate('*'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(color: Colors.black), 
        ),
        foregroundColor: Colors.black, 
      ),
      child: const Text('*'),
    ),
    ElevatedButton(
      onPressed: () => _calculate('/'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(color: Colors.black), 
        ),
        foregroundColor: Colors.black, 
      ),
      child: const Text('/'),
    ),
    ElevatedButton(
      onPressed: () => _calculate('%'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(color: Colors.black), 
        ),
        foregroundColor: Colors.black, 
      ),
      child: const Text('%'),
    ),
    ElevatedButton(
      onPressed: () => _calculate('^'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(color: Colors.black), 
        ),
        foregroundColor: Colors.black, 
     
      ),
      child: const Text('^'),
    ),
    ElevatedButton(
      onPressed: () => _calculate('~/'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: const BorderSide(color: Colors.black), 
        ),
        foregroundColor: Colors.black, 
        
        minimumSize: const Size(135, 40),
      ),
      child: const Text('~/'),
    ),
  ],
),
           const SizedBox(height: 16),
Center(
  child: Text(
    _expression.isNotEmpty ? _expression : 'Hasil: $_result',
    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
  ),
),
           
          ],
        ),
      ),
    );
  }
}