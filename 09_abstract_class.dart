void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

// Una clase abstracta en Dart es una clase que no puede ser instanciada directamente.
// Se utiliza como una base para otras clases. Las clases abstractas pueden contener métodos
// abstractos (sin implementación) y métodos concretos (con implementación).
// Los métodos abstractos deber ser implementados por las subclases.
abstract class EnergyPlant {
  double energyLeft;
  final PlanType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

enum PlanType { nuclear, wind, water }

// extends o implements
// -> extends: se utiliza para heredar de una clase base (superclase)
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// -> implements: se utiliza para implementar una interfaz
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlanType type = PlanType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

/*
 El Principio de Inversión de Dependencias (Dependency Inversion Principle, DIP) es uno de los cinco principios SOLID de la programación orientada a objetos. Este principio establece dos reglas principales:

  1. Los módulos de alto nivel no deben depender de módulos de bajo nivel. Ambos deben depender de abstracciones.
  2. Las abstracciones no deben depender de detalles. Los detalles deben depender de abstracciones.
  
  Explicación:
  - Módulos de alto nivel: Son aquellos que contienen la lógica de negocio principal de la aplicación.
  - Módulos de bajo nivel: Son aquellos que implementan detalles específicos, como acceso a bases de datos, servicios web, etc.
  - Abstracciones: Son interfaces o clases abstractas que definen contratos que los módulos de bajo nivel deben implementar.
  
  Beneficios:
  - Desacoplamiento: Facilita el desacoplamiento entre componentes, lo que hace que el código sea más flexible y fácil de mantener.
  - Facilidad de prueba: Permite la inyección de dependencias, lo que facilita la creación de pruebas unitarias.
  - Flexibilidad: Facilita el cambio de implementaciones sin afectar a los módulos de alto nivel.
*/
