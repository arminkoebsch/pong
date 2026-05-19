void intro(){
  background(0, 0, 255);
  
  textAlign(CENTER, CENTER);
  textSize(70);
  
  fill(0);
  tactile(500, 500);
  text("single player", 500, 500);
  
  fill(0);
  tactile(1000, 500);
  text("multiplayer", 1000, 500);
  
  
}

void introClicks(){
  
  if (mouseX > 350 && mouseX < 650 && mouseY > 450 && mouseY < 550){
    mode = game;
    background(0);
    AI = true;
  }
  
  if (mouseX > 850 && mouseX < 1150 && mouseY > 450 && mouseY < 550){
    mode = game;
    background(0);
    AI = false;
  }
}
