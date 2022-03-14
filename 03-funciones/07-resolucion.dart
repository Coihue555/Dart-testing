import 'dart:io';
void main() {

  while (continuar == 'y'){
    escribirAPantalla('Cual es su nombre?');
    String nombre = stdin.readLineSync() ?? '';
    escribirAPantalla('Que edad tienes?');
    String edad = stdin.readLineSync() ?? '';
    escribirAPantalla('En que pais naciste?');
    String pais = stdin.readLineSync() ?? '';
    escribirAPantalla('Cual es tu salario?');
    String salarioIngresado = stdin.readLineSync() ?? '1500';
    double salarioADoble = double.parse(salarioIngresado);


    String numUsuario(int valor){
      String usuarioNum = 'Usuario$valor';
      return usuarioNum;
    }

    numUsuario(orden);

    final Map<String, dynamic> usuario = {
      'nombreUser$orden': nombre,
      'edadUser$orden'  : edad,
      'paisUser$orden'  : pais,
      'salario$orden'   : salarioADoble,
    };

    stdout.writeln('Usuario$orden sin deducciones');
    stdout.writeln( usuario );

    double salario     =  salarioADoble;
    double deducciones = salario * 0.15;
    double salarioNeto = salario - deducciones;

    usuario['salario']     = salario;
    usuario['deducciones'] = deducciones;
    usuario['salarioNeto'] = salarioNeto;

    stdout.writeln(usuario);

    listaUsuarios.add( usuario);
    
    escribirAPantalla("Desea cargar otro usuario? 'y' para continuar");
    continuar = stdin.readLineSync() ?? 'y';
    
    orden++;
  }//fin del while

  escribirAPantalla('Si desea revisar un usuario ingrese su numero:');
  dynamic buscarUser = stdin.readLineSync();
  print( listaUsuarios.elementAt( int.parse(buscarUser) ) );

}

void escribirAPantalla(String pregunta) => stdout.writeln('$pregunta');
int orden=0;
String continuar = 'y';
Set <Map> listaUsuarios = {};