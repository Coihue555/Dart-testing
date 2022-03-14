import 'clases/persona.dart';

void main() {

Persona persona = new Persona();
persona..nombre = 'Andres'
       ..edad   = 34;
       //.._bio    = 'Hincha de Club Atletico Cipolletti'; //_bio no se puede usar al ser _privado

persona.bio = 'Cambie el bio';
print(persona.bio);

}
