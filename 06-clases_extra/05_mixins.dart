
mixin Logger{

  void imprimir( String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

class Logger2{    //este mixin, como todos, puede ser una clase

  void imprimir2( String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger, Logger2{
  String? nombre;

  Astro(){
    imprimir('-- Init del Astro --');
  }

  void existo(){
    imprimir('-- Flashhh --');
  }

}

class Asteroide extends Astro with Logger, Logger2{
  String? nombre;

  Asteroide( this.nombre ){
    //imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }
}

main(){
  final ceres = new Asteroide('Ceres');
}