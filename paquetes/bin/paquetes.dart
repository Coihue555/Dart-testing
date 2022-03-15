import 'package:http/http.dart' as http;
import 'package:paquetes/classes/reqres_response.dart';

import 'package:paquetes/paquetes.dart' as paquetes;


void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then( ( http.Response res) {
    
    final resReqRes = reqResResponseFromJson(res.body);

    print('Pagina: ${resReqRes.page}');
    print('Por pagina: ${resReqRes.perPage}');
    print('Id del 3er elemento: ${resReqRes.data[2].id}');
    
    
  
  });
}
