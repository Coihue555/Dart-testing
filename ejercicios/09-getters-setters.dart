import 'dart:math' as math;

void main(){
  final cuadrado = new Cuadrado ( 5 );

  cuadrado.area = 10;

  print('Area: ${cuadrado.calcularArea() }');

  print('Lado: ${cuadrado.lado }');
  print('Area get: ${cuadrado.area}');


}


class Cuadrado{

  double lado;

  double get area {
    return  this.lado * this.lado;
  }

  set area(double valor){
    this.lado = math.sqrt(valor);
  }

  Cuadrado(double lado):
  this.lado = lado;


  double calcularArea(){
    return this.lado * this.lado;
  }
}