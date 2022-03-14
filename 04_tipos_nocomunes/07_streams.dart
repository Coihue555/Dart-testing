
import 'dart:async';

void main() {
  
  final streamController = new StreamController<String>.broadcast(); //broadcast permite que hayan 2 listeners

  streamController.stream.listen(
    (data) => print('Despegando! $data'), 
    onError: (err) => print('Error! $err'),
    onDone: ()=>print('Mision completa'),
    cancelOnError: false
  );

  streamController.stream.listen(
    (data) => print('Despegando2! $data'), 
    onError: (err) => print('Error2! $err'),
    onDone: ()=>print('Mision completa2!'),
    cancelOnError: false
  );

  streamController.sink.add('Apolo 11');
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');
  streamController.sink.addError('Houston tenemos un problema...');
  streamController.sink.add('Apolo 14');
  streamController.sink.add('Apolo 15');

  streamController.sink.close();
 
  print('Fin del main');
}