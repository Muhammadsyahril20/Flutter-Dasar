// identitas dua buah objek
void main(List<String> args) {
    int a = 123;
    double b = 123.456;
    String c = 'Dart';
    int d = 123;

    print('a.hashCode: ${a.hashCode}');
    print('b.hashCode: ${b.hashCode}');
    print('c.hashCode: ${c.hashCode}');
    print('d.hashCode: ${d.hashCode}');
    print('identical(a, d): ${identical(a, d)}');
}
