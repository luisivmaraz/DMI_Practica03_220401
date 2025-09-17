void main() {
  final String pokemon = "Unpokemon";
  final int hp = 120;
  final bool isAlive = true;
  final List<String> abilities = ["Overgrow", "growl", "Tackle"];
  final sprites = <String>[
    "Unpokemon/Unpokemon_frontal.png",
    "Unpokemon/Unpokemon_frontal.png",
    "Unpokemon/Unpokemon_frontal.png"
  ];

  dynamic errorMessage = "Hola";
  errorMessage = 14;
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, "Luis", 2.6, 'a', false};
  errorMessage = () => true;
  errorMessage = null;

  print("$pokemon $hp $isAlive $abilities $sprites $errorMessage");
}