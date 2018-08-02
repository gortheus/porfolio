void win() {
  //SETUP
  background(#393939);
  textAlign(CENTER, CENTER);
  textSize(tSize);
  text("YOU \n WIIIIN \n Press Y", width/2, height/2);
  tSize += inc;
  if ( tSize >=90) {
    inc = -3;
  } else if (tSize<=10) {
    inc = +3;
  }
}