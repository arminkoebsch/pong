void gameover(){
  fill(0, 255, 0);
  textSize(200);
  textAlign(CENTER, CENTER);
  
  if(leftScore > rightScore){
    text("Left Wins!", 750, 500);
  }else{
    text("Right Wins!", 750, 500);
  }
  
}

void gameoverClicks(){
  mode = intro;
  leftScore = 0;
  rightScore = 0;
}
