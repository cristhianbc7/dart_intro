void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print(greetPerson(name: 'Cristhian', message: 'Hi,'));
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) => a + b;

// Función que suma dos números, el segundo argumento es opcional y tiene un
// valor por defecto de 0.
int addTwoNumversOptional(int a, [int b = 0]) {
  return a + b;
}

// Función que retorna un saludo personalizado usando parámetros nombrados
String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message $name';
}
