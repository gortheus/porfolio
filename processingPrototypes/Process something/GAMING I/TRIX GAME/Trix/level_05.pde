void level05() {
  //SETUP
  background(#393939);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("CONTROLS", text0X, text0Y);
  textSize(30);
  text("WASD to move \n (Press b to go back)", width/2, text0Y+100);
  //NEXT SCENE
  if (key == 'b') {
    text0Y+=5;
    if (text0Y > height) {
      level = 0;
      text0X = width/2;
      text0Y = height/2;
    }
  }
}