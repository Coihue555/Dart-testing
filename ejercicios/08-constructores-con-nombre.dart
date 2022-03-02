void main(){
  
  final rawJson = {
    'nombre': 'Tony Stark',
    'poder': 'Dinero'
  };
  
  //final wolverine = Heroe(nombre: 'Logan', poder: 'Regeneracion');
  //print(wolverine);

  //final ironman = Heroe(nombre: rawJson['nombre']!, poder: rawJson['poder']!);
  //print(ironman);

  final ironman = Heroe.fromJson(rawJson);
  print(ironman);

}


class Heroe{
  String nombre;
  String poder;
  

  
  //constructor simplificado
 Heroe({required this.nombre,
        required this.poder});
  
 Heroe.fromJson(Map <String, String> json):
   this.nombre = json['nombre']!,
   this.poder = json['poder'] ?? 'No tiene poder';
 
  
 
  String toString(){
    return 'Heroe: Nombre: ${this.nombre}, poder: ${this.poder}';
  }
}