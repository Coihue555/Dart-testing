void main(){
  
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  
  numeros.add(7);
  
  print(numeros[6]);
  
  final masNumeros = List.generate(50, (int index)=> index);
  
  print(masNumeros);
}