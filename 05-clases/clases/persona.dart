
class Persona {
  //campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Propiedad privada';
  //getters and setters
  String get bio {
    return _bio.toUpperCase();            //alternativamente, se puede escribir como una funcion de flecha
  }                                       //String get info => _bio.toUpperCase();
  
  set bio( String texto ){                //set bio( String texto ) => _bio = texto;
    _bio = texto;
  }

  //constructores

  //metodos(funciones)
  @override
  String toString() {
    return '$nombre - $edad: $_bio';      //String toString() => '$nombre - $edad: $bio';
  }
}