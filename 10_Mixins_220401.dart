abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Oviparo extends Animal {}

abstract class Pez extends Animal {}

mixin class Volador {
  void volar() => print("Estoy volando");
}

mixin class Terrestre {
  void caminar() => print("Estoy caminando");
}

mixin class Nadador {
  void nadar() => print("Estoy nadando");
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Terrestre {}

class Gato extends Mamifero with Terrestre {}

class Paloma extends Oviparo with Terrestre, Volador {}

class Pato extends Oviparo with Terrestre, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main (){
  final flipper = Delfin();
  print("Instancia: Flipper del tipo delfin");
  flipper.nadar();
  print ("""
-------------------------------
Instancia: Cucho del tipo gato
  """);
  final cucho = Gato();
  cucho.caminar();
  // cucho.nadar(); //Error de compilacion porque no tiene el mixin
  print ("""
-------------------------------
Instancia: Pato Donald del tipo pato
  """);
  final donald = Pato();
  donald.caminar();
  donald.volar();
  donald.nadar();


}