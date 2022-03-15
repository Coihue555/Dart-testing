import 'package:http/http.dart' as http;
import 'package:paquetes/classes/paises_response.dart';
// void getReqRes_service(){
  
//   final url = Uri.parse('https://reqres.in/api/users?page=2');
//   http.get(url).then( ( http.Response res) {
    
//     final resReqRes = reqResResponseFromJson(res.body);

//     print('Pagina: ${resReqRes.page}');
//     print('Por pagina: ${resReqRes.perPage}');
//     print('Id del 3er elemento: ${resReqRes.data[2].id}');
    
//     });
// }



void getReqRes_Col(){
  
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');
  http.get(url).then( ( http.Response res) {
    
    final colombia = paisFromJson(res.body);

    print('Pais: ${colombia.name}');
    print('Poblacion: ${colombia.population}');
    print('Fronteras: ${colombia.borders}');
    print('Idioma: ${colombia.languages[0].nativeName}');
    print('Latitud: ${colombia.latlng[0]}');
    print('Longitud: ${colombia.latlng[1]}');
    print('Moneda: ${colombia.currencies[0].name}');
    print('Bandera: ${colombia.flag}');
    
    });
}

