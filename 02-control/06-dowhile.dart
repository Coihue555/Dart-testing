import 'dart:io';

main(){
  String continuar = 'y';

  do {
    stdout.writeln('Weeee');
    stdout.writeln('Desea continuar?');
    continuar = stdin.readLineSync() ?? 'n';
  } while(continuar=='y');
}