void main() {
  final numbers = [1,1,1,2,3,4,4,5,5,6,6,6,6,7,8,9,10,10];

  print(numbers);
  print("Tipo de estructura de datos: ${numbers.runtimeType}");
  print("\n");

  //Accediendo a propiedades y funciones de los objetos
  print("Lista Original: $numbers");
  print("Tamaño de la Lista: ${numbers.length}");
  print("Valor en la posición 0: ${numbers[0]}");
  print("Primer valor: ${numbers.first}");
  print("Orden reverso: ${numbers.reversed}");
  print("-----------------------------------------------");
  final reversedNumbers = numbers.reversed;
  print(reversedNumbers.runtimeType);
  
  print ('Iterable : $reversedNumbers');
  print ( 'List: ${reversedNumbers.toList()} ');
  print ( 'set: ${reversedNumbers.toSet( )}');
  
  final numbersGreaterThan5 = numbers.where((num){
    return num > 5; 
  });
  
  print ('>5 iterable: $numbersGreaterThan5');
  print ('>5 set: ${numbersGreaterThan5.toSet()}');

}