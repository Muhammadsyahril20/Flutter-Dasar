// nilai default variabel
void main(List<String> args) {
    int? x;  // x bisa bernilai null
    print(x == null);  // Mengecek apakah x null
    print(x);  // Akan mencetak null

    x = 1;
    print(x == null);  // Akan mencetak false
    print(x is int);   // Akan mencetak true
    print(x);  // Akan mencetak 1
}
