void main() {
  print('Esta es una funcion local y solo puede ser invocada dentro de main()');

  localFunction();
  print("---------------------");
  print(globalFunction());
  print("");
  print(greetEveryone());

  print("\n------------------");
  print("Test 1: ${addTwoNumbers(25, 10)}");
  // print("Test 2: ${addTwoNumbers(100, "200")}");
  print("Test 3: ${addTwoNumbersWhithOptional(25)}");
  print("Test 4: ${GreetPerson(name: "luis")}");
  print("Test 5: ${GreetPerson(name: "luis", message: "Hola como estas")}");
}

String localFunction() {
  return 'Hola desde una funcion local';
}

String globalFunction() {
  return 'Esta es una funcion global y puede ser invocada desde cualquier parte del codigo';
}

String greetEveryone() => globalFunction() + ' y saludos a todos';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersWhithOptional(int a, [int b = 0]) {
  return a + b;
}

String GreetPerson({required String name, String message = 'Un saludo'}) {
  return '$message $name';
}
