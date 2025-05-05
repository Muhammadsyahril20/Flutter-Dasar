import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visi Misi',
      theme: ThemeData(
        fontFamily: 'JosefinSans', // Pastikan sudah disetting di pubspec.yaml
      ),
      home: const VisiMisiPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class VisiMisiPage extends StatelessWidget {
  const VisiMisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

    TextStyle contentStyle = const TextStyle(
      fontSize: 16,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Visi & Misi D4 RPL'),
        backgroundColor: const Color.fromARGB(255, 29, 10, 201), // AppBar jadi biru
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Visi', style: titleStyle),
            const SizedBox(height: 8),
            Text(
              'Prodi D4 Rekayasa Perangkat Lunak yang telah ditetapkan oleh Direktur Politeknik Negeri Bengkalis melalui surat keputusan No. 2061/PL31/TU/2016 adalah “Menjadi Program Studi vokasi yang menghasilkan lulusan bidang rekayasa perangkat lunak berstandar Nasional dan menuju reputasi Internasional pada tahun 2020”.',
              style: contentStyle,
              textAlign: TextAlign.justify, // Rata kanan-kiri
            ),
            const SizedBox(height: 16),
            Text('Misi', style: titleStyle),
            const SizedBox(height: 8),
            Text(
              '''Misi Program Studi Sarjana Terapan Rekayasa Perangkat Lunak adalah:

1. Menyelenggarakan pendidikan dan meningkatkan kemampuan mahasiswa dalam menerapkan Ilmu Pengetahuan dan Teknologi Rekayasa Perangkat Lunak bidang Rekayasa web dan Aplikasi mobile untuk meningkatkan daya saing yang tinggi.

2. Meneliti, mengembangkan dan menerapkan ilmu pengetahuan dan teknologi untuk menghasilkan produk unggulan rekayasa perangkat lunak.

3. Meningkatkan pemanfaatan teknologi informasi dalam mengatasi permasalahan pembangunan dan lingkungan internal maupun lingkungan eksternal (industri, pemerintahan dan masyarakat umum).

4. Melaksanakan dan mengembangkan desain dan jejaring kerja sama bidang rekayasa perangkat lunak yang berkelanjutan dengan institusi dalam dan luar negeri.''',
              style: contentStyle,
              textAlign: TextAlign.justify, // Rata kanan-kiri
            ),
          ],
        ),
      ),
    );
  }
}

