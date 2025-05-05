import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PhotoInfoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PhotoInfoPage extends StatefulWidget {
  const PhotoInfoPage({super.key});

  @override
  State<PhotoInfoPage> createState() => _PhotoInfoPageState();
}

class _PhotoInfoPageState extends State<PhotoInfoPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo & Info'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto dari assets
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'images/facebook.jpeg', // Ganti dengan path file gambar Anda
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            // Teks Informasi
            const Text(
              'Ini adalah foto dengan informasi di bawahnya.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // Tombol Like
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
              icon: Icon(
                isLiked ? Icons.thumb_up : Icons.thumb_up_off_alt,
                color: isLiked ? Colors.blue : Colors.grey,
              ),
              label: Text(isLiked ? 'Liked' : 'Like'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}