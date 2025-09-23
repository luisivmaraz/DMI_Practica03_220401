void main() {
  //Test 1
  final comiCharacter wolverine = comiCharacter(
    name: 'Logan',
    alias: 'Wolverine',
    power:
        'Regeneración acelerada, sentidos agudizados, garras, esqueleto reforzado con adamantium.',
    role: 'Heroe',
    isAlive: true,
    enterprise: 'Marvel',
  );

  print(wolverine.toString());
  print('------------------');

  // Test 2
  final comiCharacter thor = comiCharacter(
    name: 'Thor Odinson',
    alias: 'Thor',
    power:
        'Fuerza sobrehumana, control del clima, inmortalidad, combate con Mjolnir.',
    role: 'Heroe',
    isAlive: true,
    enterprise: 'Marvel',
  );

  print(wolverine.toString());
  print('------------------');

  // Test 2
  final comiCharacter thora = comiCharacter(
    name: 'Thor Odinson',
    alias: 'Thor',
    // Sin alias
    role: 'Heroe',
    isAlive: true,
    enterprise: 'Marvel',
  );

  print(thora.toString());
  print('------------------');

  // Test 3

  comiCharacter ironman = comiCharacter(
    name: 'Tony Stark',
    // sin alias para prueba
    power: 'Ninguno',
    role: 'Heroe',
    isAlive: false,
    enterprise: 'Marvel',
  );

  print(ironman.toString());
  print('------------------');

  // Test 4 personaje que no tenga rol ni poderes

  comiCharacter maryjane = comiCharacter(
    name: 'Mary Jane Watson',
    // sinn alias
    // sin poderes
    // sin rol
    isAlive: true,
    enterprise: 'Marvel',
  );
  print(maryjane.toString());
  print('------------------');
}

class comiCharacter {
  String name;
  String? alias;
  String? power;
  String? role;
  bool isAlive = true;
  String? enterprise;

  comiCharacter({
    required this.name,
    this.power = "desconocido",
    this.alias = "sin alias",
    this.role = "desconocido",
    required this.isAlive,
    this.enterprise,
  });

  /* El tipo `dynamic` en Dart permite que una variable pueda contener cualquier tipo de valor en tiempo de ejecución.
 En este contexto, `Map<String, dynamic>` significa que el mapa tiene claves de tipo `String` y valores que pueden ser de cualquier tipo.
 Esto es útil al trabajar con datos JSON, ya que los valores pueden ser enteros, cadenas, listas, mapas u otros tipos.
 Así, el constructor nombrado `fromJson` puede recibir un mapa flexible que representa un objeto JSON con diferentes tipos de valores. */
  comiCharacter.fromJson(Map<String, dynamic> data)
    : name = data['name'],
      alias = data['alias'] ?? "sin alias",
      power = data['power'] ?? "desconocido",
      role = data['role'] ?? "desconocido",
      isAlive = data['isAlive'] ?? true,
      enterprise = data['enterprise'];

  @override
  String toString() {
    return """ 
        Alias: ${alias?.toUpperCase()}
        Nombre: ${name.toUpperCase()}
        Poder: ${power?.toUpperCase()}
        Rol: ${role?.toUpperCase()}
        ¿Está vivo?: ${isAlive ? "Sí" : "No"}
        Empresa: ${enterprise?.toUpperCase()}    
        """;
  }
}
