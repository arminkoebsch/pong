void game(){
  
  //paddles
  circle(0, ly, ld);
  circle(width, ry, rd);
  
  //ball
  circle(bx, by, bd);
  
  //paddles move
  if (wkey == true) ly = ly - 5;
  if (skey == true) ly = ly + 5;
  if (upkey == true) ry = ry - 5;
  if (downkey == true) ry = ry + 5;
  
  //ball move
  bx = bx + vx;
  by = by + vy;
  
  //edge bouncing
  if (bx < 0 + bd/2 || bx > width - bd/2) {
    vx = vx * -1;
  }
  if (by < 0 + bd/2 || by > height - bd/2) {
    vy = vy * -1;
  }
  
  //paddle bouncing
  if (dist(0, ly, bx, by)*2 <= ld + bd){
    vx = (bx - 0)/5;
    vy = (by - ly)/5;
  }
  
  if (dist(1000, ry, bx, by)*2 <= rd + bd){
    vx = (bx - 1000)/5;
    vy = (by - ry)/5;
  }
  
  
  
}

void gameClicks(){
  
}
