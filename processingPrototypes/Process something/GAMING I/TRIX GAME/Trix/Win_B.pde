void level46() {
  //SETUP
  background(#393939);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("GOOD BYE\n (Y)", text0X, text0Y);
  if (key == 'y') {
    text0Y+=5;
    if (text0Y > height) {
      level = 4;
      text0X = width/2;
      text0Y = height/2;
    }
  }
}