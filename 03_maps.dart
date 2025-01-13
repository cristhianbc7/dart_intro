void main() {
  // Se define un mapa (Map) con claves de tipo String y valores de tipo dynamic
  final Map<String, dynamic> pokemon = {
    'name': 'Dito', // Clave 'name' con valor String
    'hp': 100, // Clave 'hp' con valor int
    'isAlive': true, // Clave 'isAlive' con valor bool
    'abilities': <String>['impostor'], // Clave 'abilities' con valor lista de Strings
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'} // Clave 'sprites' con valor mapa de int a String
  };

  // Imprime el mapa completo
  print(pokemon);

  // Accede e imprime el valor asociado a la clave 'name'
  print('Name: ${pokemon['name']}');

  // Accede e imprime el valor asociado a la clave 'sprites'
  print('Sprites: ${pokemon['sprites']}');

  // Accede e imprime el valor asociado a la clave 2 dentro del mapa 'sprites'
  print('Back: ${pokemon['sprites'][2]}');

  // Accede e imprime el valor asociado a la clave 1 dentro del mapa 'sprites'
  print('Front: ${pokemon['sprites'][1]}');
}
