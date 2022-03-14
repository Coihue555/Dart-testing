

class MiServicio{

  static final MiServicio _singleton = new MiServicio._interno(); // 2 propiedad statica y privada para tener en memoria

  factory MiServicio(){             // 3 constructor por defecto, con instancia ya inicializada y guardada en memoria
    return _singleton;
  }

  MiServicio._interno();                // 1 constructor con nombre y _privado por lo cual no se puede acceder 
                                        // crea una instancia  
  String url = 'https://octarinecode.com';
  String key = 'ABC123';

}