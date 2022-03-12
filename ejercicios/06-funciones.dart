void main(){
  
  final nombre = 'Andres';
  
  saludar(nombre, 'Greetings');
  saludar2( mensaje: 'Hey!', nombre:'Andy');


}

void saludar( String nombre, [ String mensaje = 'Hello']){
  print('$nombre $mensaje');
}

void saludar2({String nombre ='No Name', String mensaje = 'Bienvenido'}){
  print('Hola $nombre!');
}


//void saludar2({
//required String nombre ='No Name',
//required String mensaje = 'Bienvenido'}){
//  print('Hola $nombre!');