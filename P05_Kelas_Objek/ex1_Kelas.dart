class Point {
  int? x;
  int? y;
}

void main(List<String> args) {
  Point a = Point();
  a.x = 2;
  a.y = 3;
  print('Titik a terletak di koordinat (${a.x}, ${a.y})');
}
