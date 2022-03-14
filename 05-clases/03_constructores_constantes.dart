
class Location{

  final double lat;
  final double lng;

  const Location( this.lat, this.lng );
}

main() {

  //final sanFrancisco1 = new Location(18.3232, 39.6000);
  //final sanFrancisco2 = new Location(28.3232, -31.1050);
  //final sanFrancisco3 = new Location(28.3232, -31.1050);

  //print( sanFrancisco1 == sanFrancisco2); //false
  //print( sanFrancisco2 == sanFrancisco3); //false

  const sanFrancisco4 = const Location(28.3232, -31.1050);
  const sanFrancisco5 = const Location(28.3232, -31.1051);
  const sanFrancisco6 = const Location(28.3232, -31.1051);

  const berlin = const Location(28.3232, -31.1051);

  print( sanFrancisco4 == sanFrancisco5);
  print( sanFrancisco5 == sanFrancisco6);
  print( berlin == sanFrancisco6); // da true porque apuntan al mismo espacio de memoria: const Location(28.3232, -31.1051);



  
}