import 'dart:io';

void main(){
 var mensaje = saludar();
 print(mensaje);

 saludar();
 //preguntarAlgo(1, 'tu edad?', 1);
 escribirAPantalla('Cual es tu edad?');
}

String saludar(){
  return 'Hola Elliot';
  

}

void preguntarAlgo(int indexPregunta, String pregunta, int persona){
  stdout.writeln('$pregunta');
  String respuesta = stdin.readLineSync() ?? '';
  return print('Su respuesta fue: $respuesta');
  
}


void escribirAPantalla(String pregunta){
  stdout.writeln('$pregunta');
}

void guardarRespuesta(){

}