void main() {
  final Hero wolverine = new Hero(name: 'Logan');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name; // Propiedad para el nombre del héroe
  String power; // Propiedad para el poder del héroe

  // Constructor alternativo comentado que usa inicilización en lista
  /* 
   Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
  */

  // Constructor que inicializa las propiedades name y power
  Hero({required this.name, this.power = 'Sin poder'});

  // Sobreescribe el método toString para proporcionar una representación personalizada del objeto
  @override
  String toString() {
    return '$name - $power';
  }
}
