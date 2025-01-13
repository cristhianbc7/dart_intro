void main() {
  //-> variable mutable, puede cambiar su valor después de ser inicializada
  //var myName = 'Cristhian'; 

  // -> variable mutable con tipo de dato explícito
  //String myName = 'Cristhian'; 

  // -> variable inmutable, su valor no puede cambiar después de ser ininicializada
  //final myName = 'Cristhian'; 

  // -> variable inmutable que se inicializa más tarde
  //late final myName; 

  // -> asignación de valor a la variable 'myName' cuando se usa 'late final'
  //myName = 'Cristhian'; 

  // -> variable constante, su valor es fijo y no puede cambiar
  const myName = 'Cristhian';

  print('Hola $myName'); // Imprime 'Hola Cristhian'
  print('Hola ${myName.toUpperCase()}'); // Imprime 'Hola CRISTHIAN' en mayúsculas
  print('Hola ${1 + 1}'); // Imprime 'Hola 2', resultado de la operación aritmética
}
