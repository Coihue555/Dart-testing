void main(){
  
  final wolverine = Heroe(nombre: 'Logan', poder: 'Regeneracion');
  
 // wolverine.nombre = 'Logan';
//  wolverine.poder = 'Regeneracion';
  
  print(wolverine);
  

}

//el simbolo ? las convierte en opcionales
class Heroe{
  String? nombre;
  String? poder;
  
  //constructor en Dart
  //Heroe(String pNombre, String pPoder){
 //   this.nombre = pNombre;
//    this.poder = pPoder;
    
//  }
  
  //constructor simplificado
 Heroe({required this.nombre, required this.poder});
  
 
  String toString(){
    return 'Heroe: Nombre: ${this.nombre}, poder: ${this.poder}';
  }
}