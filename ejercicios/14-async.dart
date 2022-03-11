//async se ejecuta luego, en otra pila de procesos

void main() async {
  
  print('Antes de la petición');
  
//  httpGet('https://api.accuweather.com/argentine')
//     .then( (data) {
 //      
//       print( data.toUpperCase() );
//       
//     });
  
  final data = await httpGet('https://api.accuweather.com/argentine');
  print(data);
  
  final nombre = await getNombre('10');
  print(nombre);
  //getNombre('10').then(print);
  
  print('Fin del programa');
    
}

Future<String> getNombre(String id) async{
  return '$id - Fernando';
}


Future<String> httpGet( String url ) {
  return Future.delayed( 
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' 
  );
}