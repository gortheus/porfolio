int text0X, text0Y;
void level0() {
  //SETUP
  background(#393939);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("TRIX", text0X, text0Y);
  textSize(30);
  text("(Press SPACE) \n Press H for help", width/2, text0Y+60);
  //NEXT SCENE
  if (key == ' ') {
    text0Y+=5;
    if (text0Y > height) {
      level = 1;
      // LEVEL 1
      trix1 = new Gamer(width*1/4, height*1/4, 40, 75+20, width-75-20, 75+20, height-75-20);
      star1 = new Star(width/2, height-200);
      coin1 = new Coin(200, 400);
      hole1 = new Hole(width/2, height/2);

      turret1 = new Turret(width-150, 180, 80, 80);
      bullet1 = new Bullet(turret1.x-30, turret1.y, 30, 30, 20);

      turret2 = new Turret(width-150, 280, 80, 80);
      bullet2 = new Bullet(turret2.x-30, turret2.y, 30, 30, 30);

      turret3 = new Turret(width-150, 480, 80, 80);
      bullet3 = new Bullet(turret3.x-30, turret3.y, 30, 30, 35);
    }
  }
  if (key == 'h') {
    text0Y+=5;
    if (text0Y > height) {
      level = 0.5;
      text0X = width/2;
      text0Y = height/2;
    }
  }
}