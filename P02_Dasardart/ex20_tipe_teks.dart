// Tipe teks atau string
import 'dart:io';

void main(List<String> args) {
  String s1 = 'Dart';
  String s2 = 'Flutter';
  String s3 = '''Ini adalah contoh teks
panjang yang berjumlah lebih
dari satu baris''';
  
  String s4 = """Ini adalah contoh teks
panjang yang berjumlah lebih
dari satu baris""";

  stdout.writeln(s1[0] + s1[1] + s1[2] + s1[3]); // Mengakses karakter dalam string
  stdout.writeln(s1 + ' ' + s2); // Menggabungkan string
  print(s3);
  print(s4);
}
