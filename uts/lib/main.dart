import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
                fontFamily: 'JosefinSans', 

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, 
          foregroundColor: Colors.black, 
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black), 
          bodyMedium: TextStyle(color: Colors.black), 
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, 
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const Icon(
                  Icons.person,
                  size: 100, 
                  color: Colors.blue, 
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Username:',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Password:',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Lupa Password? ',
                      style: TextStyle(color: Colors.black), 
                      children: [
                        TextSpan(
  text: 'Reset',
  style: TextStyle(
    fontStyle: FontStyle.italic, 
    color: Colors.black,
    decoration: TextDecoration.underline, 
  ),
),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Tidak punya akun silahkan ',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Daftar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            color: Colors.black,
                                decoration: TextDecoration.underline, 

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ElevatedButton(
  onPressed: () {
    
  },
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0), 
      side: const BorderSide(color: Colors.black), 
    ),
    backgroundColor: Colors.white, 
    foregroundColor: Colors.black, 
  ),
  child: const Text('Submit'),
),
              ],
            ),
          ),
        ),
      ),
    );
  }
}