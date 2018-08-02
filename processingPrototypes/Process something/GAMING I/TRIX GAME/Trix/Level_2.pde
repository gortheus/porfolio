PImage back2;
int startTime;
int timePassed;
Coin coin1, coin2, coin3, coin4, coin5;
void level2() {
  //BACKGROUND (LOAD ASSETS) 
  imageMode(CENTER);
  image(back2, width/2, height/2, width, height);
  timePassed = (millis()-startTime)/1000;
  if (timePassed>=10) {
    level=-1.2;
  }

  //spawn CHARACTER
  hole1.draw();
  trix1.spawn();
  if (grab1==false){
  coin1.draw(); }
  if (grab2==false){
  coin2.draw(); }
  if (grab3==false){
  coin3.draw(); }
  if (grab4==false){
  coin4.draw();} 
  if (grab5==false){
  coin5.draw();}
  coinGrab();
 if ( count == 5){
  star1.draw();
 }
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