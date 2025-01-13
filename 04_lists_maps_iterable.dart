void main() {
  final numbers = [
    1,
    2,
    3,
    4,
    5,
    5,
    5,
    6,
    7,
    8,
    9,
    9,
    10
  ]; // Lista de números enteros

  // Imprime la lista original
  print('List original: $numbers');
  // Imprime la longitud de la lista
  print('Length: ${numbers.length}');
  // Imprime el primer elemento de la lista (índice 0)
  print('Index 0: ${numbers[0]}');
  // Imprime el primer elemento de la lista usando la propiedad 'first'
  print('First: ${numbers.first}');
  // Imprime la lista en orden inverso
  print('Reversed: ${numbers.reversed}');

  // Almacena la lista invertida en una variable tipo Iterable
  final reversedNumbers = numbers.reversed;
  // Imprime el Iterable de la lista invertida
  print('Iterable: $reversedNumbers');
  // Convierte el Iterable en una lista y la imprime
  print('List: ${reversedNumbers.toList()}');
  // Convierte el Iterable en un conjunto (Set) y lo imprime
  print('Set: ${reversedNumbers.toSet()}');

  // Filtra los números mayores a 5 y los almacena en un Iterable
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });
  // Imprime el Iterable de números mayores a 5
  print('>5 Iterable: $numbersGreaterThan5');
  // Convierte el Iterable en un conjunto (Set) y lo imprime
  print('>5 Set: ${numbersGreaterThan5.toSet()}');

  // -> Una List es una colección ordenada de elementos
  // -> Un Set es una colección no ordenada de elementos únicos
  // -> Un Iterable es una colección que puede ser recorrida (iterada)
}
