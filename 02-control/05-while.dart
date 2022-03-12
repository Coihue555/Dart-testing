import 'dart:io';

main(){
  String continuar = 'y';

  while(continuar=='y'){
    stdout.writeln('Weeee');
    stdout.writeln('Desea continuar?');
    continuar = stdin.readLineSync()!;
  }
}