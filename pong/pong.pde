

//mode Framework
int mode;

final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int options = 4;

//entity variables
float ly, ry, ld, rd;//paddles
float bx, by, bd, vx, vy;//ball

//keyboard variables
boolean wkey = false;
boolean skey = false;
boolean upkey = false;
boolean downkey = false;





void setup(){
  size(1500, 1000);
  mode = game;
  
  ly = 500;
  ry = 500;
  ld = 100;
  rd = 100;
  bx = width/2;
  by = 500;
  bd = 10;
  vx = -10;
  vy = 2;

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
