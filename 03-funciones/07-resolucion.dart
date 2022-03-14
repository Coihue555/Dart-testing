import 'dart:io';

void main() {


  escribirAPantalla('Cual es su nombre?');
  String nombre = stdin.readLineSync() ?? '';
  
  escribirAPantalla('Que edad tienes?');
  String edad = stdin.readLineSync() ?? '';
  escribirAPantalla('En que pais naciste?');
  String pais = stdin.readLineSync() ?? '';

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad'  : edad,
    'pais'  : pais
  };


}



void escribirAPantalla(String pregunta) => stdout.writeln('$pregunta');


