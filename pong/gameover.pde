void gameover(){
  background(0, 0, 255);
  fill(0, 255, 0);
  
  if(leftScore > rightScore){
    text("Left Wins!", 500, 500);
  }else{
    text("Right Wins1", 500, 500);
  }
  
}

void gameoverClicks(){
  
}
