PImage back3;
void level3() {
  //BACKGROUND (LOAD ASSETS) 
  imageMode(CENTER);
  image(back1, width/2, height/2, width, height);

  //spawn CHARACTER
  hole1.draw();
  trix1.spawn();
  star1.draw();

  //Enemies
  turret1.draw(); 
  turret2.draw();
  turret3.draw();

  bullet1.draw(); 
  bullet2.draw();
  bullet3.draw();
  if (bullet1.x<0) {
    bullet1 = new Bullet(turret1.x-30, turret1.y, 30, 30, 20);
  }
  if (bullet1.x<0) {
    bullet1 = new Bullet(turret1.x-30, turret1.y, 30, 30, 20);
  }
  if (bullet2.x<0) {
    bullet2 = new Bullet(turret2.x-30, turret2.y, 30, 30, 30);
  }
  if (bullet3.x<0) {
    bullet3 = new Bullet(turret3.x-30, turret3.y, 30, 30, 30);
  }
}