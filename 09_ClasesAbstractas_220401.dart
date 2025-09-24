void main() {
  //Test 1
  final plantaEolicaQueretaro = WindPlant(initialEnergy: 545000);
  final plantaEolicaNuevoLeon = WindPlant(initialEnergy: 600000);

  print(""" 
  Lista de plantas energeticas en mexico 
  --------------------------------
  ***** Eolicas *****
  --------------------------------
  Planta Eolica de Querétaro
  Energia disponible: ${plantaEolicaQueretaro.energyLeft} 
  
  --------------------------------
  Planta eolica en Nuevo Leon
  Energia disponible: ${plantaEolicaNuevoLeon.energyLeft} 
  --------------------------------
  """);

  //Test 2
  final plantaNuclearLagunaVerde = NuclearPlant(energyLeft: 2000000);
  final plantaNuclearElborrego = NuclearPlant(energyLeft: 1500000);
  print("""
  --------------------------------
  ***** Nuclear *****
  --------------------------------
  Planta Nuclear Laguna Verde
  Energia disponible: ${plantaNuclearLagunaVerde.energyLeft}
  --------------------------------
  Planta Nuclear El Borrego
  Energia disponible: ${plantaNuclearElborrego.energyLeft}  
 
·····································································
""");

  // Test 3: Planta Eolica de Queretaro consume 95241 kwh de energia

  print(""" 
Historial de consumo de energia del: 12/12/25
--------------------------------
solicitud de consumo 1:
solicitante: Hospital General de Hidalgo
cantidad solicitada(KwH): 95241
proveedor: Planta Eolica de Queretaro
""");
  plantaEolicaQueretaro.consumeEnergy(95241);
  print(""" 
*** Energia disponible: ${plantaEolicaQueretaro.energyLeft} ***

-----------------------------------------------
// Test 4: planta Nuclear de Laguna Verde
 
solicitud de consumo 2:
Solicitante: AICM
Cantidad solicitada (KwH): 1250000
proveedor: Planta Nuclear de Laguna Verde
""");
  plantaNuclearLagunaVerde.consumeEnergy(1250000);
  print("""
*** Energia disponible: ${plantaNuclearLagunaVerde.energyLeft} ***
-----------------------------------------------

""");


//Tarea Crear modelo de planta ho=idrohelectrica, costo del consumo es +3% extra 








}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;

  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount) {}
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
