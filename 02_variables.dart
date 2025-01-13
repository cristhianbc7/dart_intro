void main() {
  final String pokemon = 'Ditto'; // Variable inmutable de tipo String
  final int hp = 100; // Variable inmutable de tipo int
  final bool isAlive = true; // Variable inmutable de tipo bool
  final List<String> abilities = [
    'impostor'
  ]; // Variable inmutable de tipo lista de Strings
  final sprites = <String>[
    'ditto/front.png',
    'ditto/back.png'
  ]; // Variable inmutable de tipo lista de Strings con inferencia de tipo

  // dynamic == null
  // El tipo dynamic es un tipo especial que indica que una variable puede contener cualquier
  // tipo de dato. Estas variables pueden cambiar su tipo en tiempo de ejecución. 
  // Su uso puede ser útil en situaciones donde no se conoce el tipo de datos de antemano,
  // pero debe usarse con cuidado ya que pierde las ventajas de la verificación de tipos
  // en tiempo de compilación.
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => true;
  errorMessage = null;

// Imprime las variables en un bloque de texto multilínea
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
 """);
}
