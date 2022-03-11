main(){
  //==Numeros
  int a = 10;
  double b = 5.5;
  int? c = null;

  int _a = 30;
  double $b = 40;

  //print(_a +$b);
  //print(b);
  //print(c);


  //==Strings
  String nombre ='Tony';
  String nombre3 ='O\'Connor';

  String multilinea = '''
Hello friend,
its been a while''';

  //print(multilinea);

  //==Listas
  //var villanos = ['Lex Luthor', 'Red Skull', 'Doom'];
  List<String> villanos = ['Lex Luthor', 'Red Skull', 'Doom'];
  //print('Lista...');
  villanos.add('Loki');
  villanos.add('Loki');
  villanos.add('Loki');
  villanos.add('Loki');
  //print(villanos);

  var villanosSet = villanos.toSet();

  //print(villanosSet.toList());

  


  //==Sets
  //print('Set...');
  Set<String> villanos2 = {'Lex Luthor', 'Red Skull', 'Doom'};
 
  villanos2.add('Loki');
  villanos2.add('Loki');
  villanos2.add('Loki');
  print(villanos2);
  //print('...');
  //print('Los sets no aceptan duplicados...');


  //==Maps



}