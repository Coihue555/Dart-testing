import 'dart:io';

main(){

stdout.writeln('Cual es tu edad?');
int edad = int.parse(stdin.readLineSync() ?? '0');

//stdout.writeln(edad);

if ( edad >= 21 ) {
  stdout.writeln('Ciudadano');
} else if (edad >=18 && edad <21){
  stdout.writeln('Eres mayor de edad');
} else {
  stdout.writeln('Eres menor de edad');
}

}