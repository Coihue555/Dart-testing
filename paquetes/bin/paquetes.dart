import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:paquetes/paquetes.dart' as paquetes;


void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then( ( http.Response res) {        //regresa un Future
    //print(res);                                     //aqui solo vemos la instance de Response, aunque los datos ya estan
    final body = jsonDecode(res.body);              //jsonDecode crea un mapa con el contenido de res.body
    print(body);
    print('page: ${ body['page'] }');
    print('per_page: ${ body['per_page'] }');
    print('id del 3er item: ${ body['data'][2]['id'] }');
  
  });
}
