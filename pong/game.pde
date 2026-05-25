void game() {
  
  theme.play();

  fill(150, 50);
  rect(0, 0, width, height);

  //scoring
  textSize(50);
  fill(0);
  text(leftScore, width/4, 100);
  text(rightScore, 3*width/4, 100);

  //paddles
  fill(255);
  circle(0, ly, ld);
  circle(width, ry, rd);

  //ball
  circle(bx, by, bd);

  //paddles move
  if (wkey == true && ly > 0+ld/2) ly = ly - 5;
  if (skey == true && ly < height-rd/2) ly = ly + 5;

  if (AI == false) {
    if (upkey == true && ry > 0+rd/2) ry = ry - 5;
    if (downkey == true && ry < height-rd/2) ry = ry + 5;
  } else {
    //ry = by;//impossible difficulty

    if (vx > 0 && bx > 750) {
      if (ry + 5 > by && ry > 0+rd/2) ry = ry - 5;
      if (ry - 5 < by && ry < height-rd/2) ry = ry + 5;
    }else{
      if (ry > 500) ry = ry - 5;
      if (ry < 500) ry = ry + 5;
    }
  }

  //ball move
  if (timer < 0) {
    bx = bx + vx;
    by = by + vy;
  }

  //scoring
  if (bx < 0) {
    rightScore++;
    bx = width/2;
    by = height/2;
    timer = 50;
    vy = 0;
  }

  if (bx > width) {
    leftScore++;
    bx = width/2;
    by = height/2;
    timer = 50;
    vy = 0;
  }

  //winning
  if (leftScore > 6 || rightScore > 6) {
    mode = gameover;
  }

  //timer
  timer = timer - 1;

  //edge bouncing
  if (by < 0 + bd/2 || by > height - bd/2) {
    vy = vy * -1;
  }

  //paddle bouncing
  if (dist(0, ly, bx, by)*2 <= ld + bd) {
    vx = (bx - 0)/5;
    vy = (by - ly)/5;
  }

  if (dist(1500, ry, bx, by)*2 <= rd + bd) {
    vx = (bx - 1500)/5;
    vy = (by - ry)/5;
  }
}

void gameClicks() {
}
