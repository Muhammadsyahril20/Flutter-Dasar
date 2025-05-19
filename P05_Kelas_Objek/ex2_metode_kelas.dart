class Point {
  int x;
  int y;

  Point(this.x, this.y);

  void setLocation(int xValue, int yValue) {
    x = xValue;
    y = yValue;
  }
}

void main(List<String> args) {
  Point a = Point(0, 0); // Inisialisasi awal
  a.setLocation(2, 3);
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
