import 'dart:io';

main(){

stdout.writeln('¿who are you?');
String? nombre = stdin.readLineSync( );

stdout.writeln('Tu nombre es: $nombre');

}