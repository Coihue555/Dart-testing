

import 'clases/mi_servicio.dart';

main(){

  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v2';

  print(spotifyService1 == spotifyService2);

  print(spotifyService1.url);
  print(spotifyService2.url); //ambas son .com/v2 ya que fue la ultima modificacion de la instancia unica MiServicio

}