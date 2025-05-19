import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Tampilan Flutter',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  String gender = 'Laki-laki';
  final TextEditingController nameController = TextEditingController();
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    nameController.addListener(() {
      setState(() {}); // Biar DataTable update kalau nama diisi
    });
  }

  void showAlert() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Alert!'),
        content: const Text('Kamu menekan tombolnya, mantap!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }

  Future<void> pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo UI Lengkap'),
        leading: const Icon(Icons.flutter_dash),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Foto dari asset
            Image.asset(
              'images/saya.png',
              height: 100,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 10),
            const Text(
              'Halo! Ini adalah contoh UI Flutter',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // Tombol alert
            ElevatedButton(
              onPressed: showAlert,
              child: const Text('Klik Aku!'),
            ),

            const SizedBox(height: 20),

            // Checkbox
            CheckboxListTile(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
              title: const Text('Saya setuju dengan syarat dan ketentuan'),
            ),

            // Radio Button
            const SizedBox(height: 10),
            const Text('Pilih Jenis Kelamin:'),
            RadioListTile(
              title: const Text('Laki-laki'),
              value: 'Laki-laki',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text('Perempuan'),
              value: 'Perempuan',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
            ),

            const SizedBox(height: 10),

            // Form Input
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 10),

            // Date Picker
            Row(
              children: [
                ElevatedButton(
                  onPressed: pickDate,
                  child: const Text('Pilih Tanggal'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    selectedDate != null
                        ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                        : 'Belum dipilih',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Tabel sederhana
            const Text(
              'Tabel Data',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DataTable(
              columns: const [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('Nama')),
              ],
              rows: [
                DataRow(cells: [
                  const DataCell(Text('1')),
                  DataCell(Text(
                    nameController.text.isNotEmpty
                        ? nameController.text
                        : 'Anonim',
                  )),
                ]),
                const DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('Contoh')),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
