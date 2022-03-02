abstract class Animal{}

abstract class Pez extends Animal{}
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}

abstract class Volador{
  void volar() => print('Estoy volando');
  
}

abstract class Caminador{
  void caminar() => print('Estoy caminando');
}

abstract class Nadador{
  void nadar() => print('Estoy nadando');
}

class Dolphin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminador{}
class Gato extends Mamifero with Caminador{}
class Paloma extends Ave with Volador{}
class Pato extends Ave with Volador, Caminador, Nadador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}


void main(){
  
  final flipper = new Dolphin();
  flipper.nadar();
  
  final murcielago = new Murcielago();
  murcielago.caminar();
  murcielago.volar();
  
  
  
}