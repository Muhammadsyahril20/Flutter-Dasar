// inisialisasi variabel
void main(List<String> args) {
    int a = 1, b = 2, c = 3;
    print("Nilai awal a: " + a.toString());
    print("Nilai awal b: " + b.toString());
    print("Nilai awal c: " + c.toString());

    a = a + b + c;
    b = a + c;
    c = a + b;

    print("Nilai akhir a: " + a.toString());
    print("Nilai akhir b: " + b.toString());
    print("Nilai akhir c: " + c.toString());
}
