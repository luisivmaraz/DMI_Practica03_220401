void main() {
  // Test 1
  final cuadrado1 = Square(side: 10);
  print("El area del cuadrado es: ${cuadrado1.calculateArea}");
  print("-------");
  // Test 2
  cuadrado1.side = 26.0;
  print("El area del cuadrado es: ${cuadrado1.calculateArea}");
  print("-------");
  // Test 3
  final cuadrado3 = Square(side: 8);
  print("El area del cuadrado es: ${cuadrado3.calculateArea}");
  cuadrado3.side = -20;
}

class Square {
  double _side;

  Square({required double side})
    : assert(side > 0, "El tamaño del ladi debe ser > 0"),
      _side = side;

  double get calculateArea {
    return _side * _side;
  }

  set side(double value) {
    print("Asignando un nuevo valor al tamaño de a lado");
    if (value <= 0) throw "El valor debe de ser < 0";
    _side = value;
  }
}
