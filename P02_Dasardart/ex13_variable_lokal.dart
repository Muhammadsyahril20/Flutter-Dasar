// variabel lokal
double div(double a, double b) {
    double c = a / b;
    return c;
}

int intdiv(int a, int b) {
    int c = a ~/ b;
    return c;
}

void main(List<String> args) {
    print('10 / 3 \t= ' + intdiv(10, 3).toString());
    print('10.0 / 3.0\t= ' + div(10.0, 3.0).toString());
}
