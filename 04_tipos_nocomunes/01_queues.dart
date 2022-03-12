

import 'dart:collection';

main(){
  Queue<int> cola = new Queue();

  cola.addAll([110,20,45]);

  Iterator i = cola.iterator;

  while(i.moveNext()){
    print(i.current);
  }
}