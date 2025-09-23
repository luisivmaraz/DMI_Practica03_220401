void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Jirachi',
    'hp': 120,
    'isAlive': true,
    'abilities': {1: "Deseo Oculto", 2: "Masa Cosmica", 3: "Premonicion"},
    'sprites': <String>[
      "images/Jirachi/frontal_pose.png",
      "images/Jirachi/back_pose.png",
    ],
    'winRate': 0,
  };

  print(pokemon);
  print("---------------------------------\n");

  // Accediendo a las propiedades individuales del mapa
  print("""

POKEMON               Tipo de Dato: ${pokemon.runtimeType}
Nombre: ${pokemon['name']}     Tipo de dato: ${pokemon['name'].runtimeType}
Vida: ${pokemon['hp']}     Tipo de dato: ${pokemon['hp'].runtimeType}
Status: ${pokemon['isAlive'] ? 'Vivo' : 'Derrotado'}     Tipo de dato: ${pokemon['isAlive'].runtimeType}
Habilidades:     Tipo de dato: ${pokemon['abilities'].runtimeType}
""");

  // Buffer para las habilidades
  final abilitiesBuffer = StringBuffer();
  (pokemon['abilities'] as Map<int, String>).forEach((key, value) {
    abilitiesBuffer.writeln(
      " $key: $value     Tipo de Dato: ${value.runtimeType}",
    );
  });
  print(abilitiesBuffer.toString());

  // Buffer para las sprites
  print(
    "Imagenes (Sprites):     Tipo de dato: ${pokemon['sprites'].runtimeType}",
  );
  final spritesBuffer = StringBuffer();
  (pokemon['sprites'] as List<String>).forEach((sprite) {
    spritesBuffer.writeln(" $sprite     Tipo de dato: ${sprite.runtimeType}");
  });
  print(spritesBuffer.toString());
}
