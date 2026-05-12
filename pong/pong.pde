

//mode Framework
int mode;

final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int options = 4;

//entity variables
float ly, ry, ld, rd;//paddles
float bx, by, bd;//ball



void setup(){
  size(1000, 1000);
  mode = intro;
  
  ly = 500;
  ry = 500;
  ld = 100;
  rd = 100;
  bx = 500;
  by = 500;
  bd = 10;
}


void draw(){
  
  if (mode == intro){
    intro();
  }else if (mode == game){
    game();
  }else if (mode == pause){
    pause();
  }else if (mode == gameover){
    gameover();
  }else if (mode == options){
    options();
  }else{
  println("error");
  }
  
}
