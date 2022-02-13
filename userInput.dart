import 'dart:core';
import 'dart:io';

main() {
  stdout.writeln('Como te llamas');
  //en el video dice de poner el tipo como String pero me daba error, probe dejando var y anduvo
  var name = stdin.readLineSync();
  print('Mi nombre es $name');
}
