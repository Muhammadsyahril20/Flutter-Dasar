// variabel dynamic
void main(List<String> args) {
    dynamic x;

    x = 1;
    print("Nilai a\t: " + x.toString());
    print("Tipe a\t: " + x.runtimeType.toString());

    x = 123.456;
    print("Nilai a\t: " + x.toString());
    print("Tipe a\t: " + x.runtimeType.toString());

    x = true;
    print("Nilai a\t: " + x.toString());
    print("Tipe a\t: " + x.runtimeType.toString());

    x = 'Dart';
    print("Nilai a\t: " + x.toString());
    print("Tipe a\t: " + x.runtimeType.toString());
}
