
//el 2do argumento entre [] se convierte en opcional
void saludar( String mensaje, [String nombre = '<inserte nombre>', int edad = 30]){
  print('$mensaje $nombre - $edad');
}

void saludar2(String mensaje, {required String nombre, int veces = 10 }){
    print('Saludar2: $mensaje $nombre - $veces');
}

main(List<String> args){
  saludar('Hola');
  saludar2('Buenas..', nombre: 'Andres', veces: 20);
}