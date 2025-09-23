void main() {
  final Hero Superman = Hero(name: 'Superman', power: 'Volar');

  print(""" Nombre: ${Superman.name}  \n Poder: ${Superman.power} \n""");

  final Hero Spiderman = Hero(name: 'Spiderman', power: 'Trepar', );
  print(""" Nombre: ${Spiderman.name}  \n Poder: ${Spiderman.power} \n""");

  final Hero IronMan = Hero(name: 'IronMan');
  print(""" Nombre: ${IronMan.name}  \n Poder: ${IronMan.power}""");
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = "Sin poder"});

  @override 
  /*  @override se utiliza para indicar que un método está sobrescribiendo 
  (redefiniendo) un método de una clase padre o de una interfaz. Sirve para:

  ---Asegurarse de que realmente existe un método en la superclase o interfaz que se está sobrescribiendo.

  --- Mejorar la legibilidad y el mantenimiento del código.

  --- Permitir que el compilador verifique y advierta si el método no coincide con la
      definición original. */ 

  String toString() {
    return ' $name - $power';
  }
}
