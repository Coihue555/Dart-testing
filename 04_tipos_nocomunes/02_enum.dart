main(){
  Audio volume = Audio.alto; // 0 es volumen bajo; 1 es vol medio y 2 es vol alto
  
  switch(volume){
    case Audio.bajo: print('Volumen bajo'); break;
    case Audio.medio: print('Volumen medio'); break;
    case Audio.alto: print('Volumen alto'); break;

  }


}
enum Audio {
    bajo,
    medio,
    alto
  }