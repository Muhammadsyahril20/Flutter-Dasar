// dalam Dart semua adalah objek
void f() {} 
void main(List<String> args) {
    print(f is Function);
    print(1 is int);
    print(123.456 is double);
    print('Dart' is String);
}
