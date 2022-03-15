//llevamos la respuesta de la api para que arme un modelo y lo traemos aca
// To parse this JSON data, do
//
//     final reqResResponse = reqResResponseFromJson(jsonString);

import 'dart:convert';

ReqResResponse reqResResponseFromJson(String str) => ReqResResponse.fromJson(json.decode(str));

String reqResResponseToJson(ReqResResponse data) => json.encode(data.toJson());

class ReqResResponse {
    ReqResResponse({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
    });

    int page;
    int perPage;
    int total;
    int totalPages;
    List<Persona> data;
    Support support;

    factory ReqResResponse.fromJson(Map<String, dynamic> json) => ReqResResponse(
        page        : json["page"],
        perPage     : json["per_page"],
        total       : json["total"],
        totalPages  : json["total_pages"],
        data        : List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
        support     : Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page"        : page,
        "per_page"    : perPage,
        "total"       : total,
        "total_pages" : totalPages,
        "data"        : List<dynamic>.from(data.map((x) => x.toJson())),
        "support"     : support.toJson(),
    };
}

class Persona {
    Persona({
        required this.id,
        required this.email,
        required this.firstName,
        required this.lastName,
        required this.avatar,
    });

    int id;
    String email;
    String firstName;
    String lastName;
    String avatar;

    factory Persona.fromJson(Map<String, dynamic> json) => Persona(
        id        : json["id"],
        email     : json["email"],
        firstName : json["first_name"],
        lastName  : json["last_name"],
        avatar    : json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id"        : id,
        "email"     : email,
        "first_name": firstName,
        "last_name" : lastName,
        "avatar"    : avatar,
    };
}

class Support {
    Support({
        required this.url,
        required this.text,
    });

    String url;
    String text;

    factory Support.fromJson(Map<String, dynamic> json) => Support(
        url : json["url"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "url" : url,
        "text": text,
    };
}
