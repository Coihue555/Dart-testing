
class Cuadrado{
  final int lado;
  final int area;

  // da error
  // Cuadrado( int lado, int area){
  //   this.lado = lado;
  //   this.area = area;
  // }

  //Cuadrado( this.lado, this.area );     //valido pero vemos otra forma de hacerlo

  Cuadrado( int lado ):
    this.lado = lado,
    this.area = lado * lado;
}

main(){
  final cuadrado = new Cuadrado(5);
  print(cuadrado.area);
}