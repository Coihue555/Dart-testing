void main(){
  
  Map<String, dynamic> persona = {
    'nombre': 'Andres',
    'edad': 34,
    'soltero': false
  };
  
  persona.addAll({'tres':'Juan'});
  print(persona['nombre']);
}