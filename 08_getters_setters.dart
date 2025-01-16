void main() {
  final mySquare = Square(side: 10); // Lanzará error por aserción si -10
  print('área: ${mySquare.area}');
}

class Square {
  double _side; // Propiedad privada para el lado del cuadrado

  Square({required double side})
  : assert(side >= 0, 'side must be >= 0'), // Aserción para asegurar que el lado sea mayor o igual a 0
    _side = side;

  // Getter para calcular el área del cuadrado
  double get area {
    return _side * _side;
  }

  // Setter para establecer el valor del lado del cuadrado
  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >= 0'; // Lanza una excepción si el valor es negativo

    _side = value;
  }

  // Método para calcular el área del cuadrado
  double calculateArea() {
    return _side * _side;
  }
}
