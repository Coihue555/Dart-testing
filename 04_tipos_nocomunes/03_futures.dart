
main(){

  Future timeout = Future.delayed(Duration(seconds: 3), (){
    print('3 seconds later...');
    return 'Return del Future';
  });

//timeout.then((texto) => print(texto));
timeout.then(print);

print('Fin del main');
}