main(){
  
  final double z;
  late final double x;
  x=10;
  print(x);
  
  //late permite iniciarla despues
  z = 30;
  
  var   a = 10;
  final double b = 20;
  const double c = 30;
  
  final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  const personasConst = ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');//no cambia el Type pero si los valores internos
  //personasConst.add('Maria');//no acepta cambiar los valores de lista

  //print(personasFinal);

 
}