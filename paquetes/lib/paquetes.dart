import 'package:paquetes/classes/reqres_response.dart';
import 'package:http/http.dart' as http;

void getReqRes_service(){
  
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then( ( http.Response res) {
    
    final resReqRes = reqResResponseFromJson(res.body);

    print('Pagina: ${resReqRes.page}');
    print('Por pagina: ${resReqRes.perPage}');
    print('Id del 3er elemento: ${resReqRes.data[2].id}');
    
    });
}

//TODO tarea

void getReqRes_Col(){
  
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');
  http.get(url).then( ( http.Response res) {
    
    final resReqRes = reqResResponseFromJson(res.body);

    print('Pagina: ${resReqRes.page}');
    print('Por pagina: ${resReqRes.perPage}');
    print('Id del 3er elemento: ${resReqRes.data[2].id}');
    
    });
}

