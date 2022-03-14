
import 'dart:ffi';

class Herramientas{

static const List<String> listado = ['Martillo', 'Llave Allen', 'Destornillador'];
static void imprimirListado() => listado.forEach( print );
}


main(){
  //cuando no estaba como static habia que recurrir a esta forma para acceder al listado
  // 1 final herr = new Herramientas();
  // 1 herr.listado.forEach( print );
   
  // 3 Herramientas.listado.forEach( print ); //ahora es static
  //se puede trabajar sobre el listado, pero ojo, que solo hay una sola instancia!
  // 2 Herramientas.listado.add('Pinza'); //ahora es static const y ya no se puede modificar

  Herramientas.imprimirListado(); //se creo un metodo estatico, voila!
}