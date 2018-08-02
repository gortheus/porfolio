void level45() {
  //SETUP
  background(#393939);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("FINALLY I ESCAPED \n (Y)", text0X, text0Y);
  if (key == 'y') {
    text0Y+=5;
    if (text0Y > height) {
      level = 4.6;
      text0X = width/2;
      text0Y = height/2;
    }
  }
}