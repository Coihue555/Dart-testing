
class Persona {
  //CAMPOS O PROPIEDADES
  String? nombre;
  int? edad;
  String _bio = 'Propiedad privada';

  //GETTERS & SETTERS
  String get bio {
    return _bio.toUpperCase();            //alternativamente, se puede escribir como una funcion de flecha
  }                                       //String get info => _bio.toUpperCase();
  
  set bio( String texto ){                //set bio( String texto ) => _bio = texto;
    _bio = texto;
  }

  //CONSTRUCTORES
  // Persona( int edad, String nombre){
  //   this.edad = edad;
  //   this.nombre = nombre;                            //Persona(this.edad, this.nombre);
  // }
  
  
  //Persona(this.edad, {this.nombre})                   //Aca this.nombre es opcional con nombre
  //Persona(this.edad, {this.nombre = 'Maria'})         //Aca es opcional con nombre, y con un valor predeterminado
  Persona({required this.edad, this.nombre = 'Maria'}); //edad es un param con nombre pero requerido, ojo

  Persona.persona30(this.nombre){                       //Asi se puede crear otro tipo de constructor aparte
    this.edad = 30;
  }
  
  //METODOS(funciones)
  @override
  String toString() {
    return '$nombre - $edad: $_bio';                    //String toString() => '$nombre - $edad: $bio';
  }
}