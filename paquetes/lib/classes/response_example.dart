// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str)); //esta funcion devuelve una instancia de Welcome, recibe un string y
                                                                          //pasa por el constructor con un json.decode del string pasado
                                                                          //con los valores ya asignados a las propiedades


String welcomeToJson(Welcome data) => json.encode(data.toJson());         //se recibe un string y se devuelve on json usando la funcion toJson de abajo

class Welcome {
    Welcome({             //constructor
        required this.greeting,
        required this.instructions,
    });

    String greeting; //propiedad
    List<String> instructions; //listado

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome( //factory con constructor.conNombre(devuelve una nueva instancia de la clase)
    //el contructor devuelve un Map que se llama json
        greeting: json["greeting"],   //se asignan los valores desde el json
        instructions: List<String>.from(json["instructions"].map((x) => x)),  //from es una propiedad de Listas, y transforma y devuelve cada instancia del mapa
        //mediante .map tenemos un iterable
    );

    Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
    };
}