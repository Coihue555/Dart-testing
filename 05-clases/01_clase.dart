import 'clases/persona.dart';

void main() {

Persona persona = new Persona(edad:35, nombre: 'Andy');
Persona persona2 = new Persona.persona30('Edgar');
//persona..nombre = 'Andres'
       //..edad   = 34;
       //.._bio    = 'Hincha de Club Atletico Cipolletti'; //_bio no se puede usar al ser _privado

//persona.bio = 'Cambie el bio';
print(persona);
print(persona2);

}
