PImage star;
class Star {

  int x, y;

  Star(int _x, int _y) {
    x = _x;
    y = _y;
  }

  void draw() {
    image(star, x, y, 100, 100);
    fill(#FFFFFF, 0);
    rect(x, y-5, 45, 45);

    //COLLISION

    if (trix1.x + (trix1.size-10)/2 >= x - 45/2 && trix1.x - (trix1.size-10)/2 <= x + 45/2) //COLLISION X
    {
      if (trix1.y + trix1.size/2 >= y-5-45/2 && trix1.y - trix1.size/2 <= y-5+45/2) //COLLISION Y
      {
        if (level==1) {
          //LEVEL 2

          trix1 = new Gamer(width*1/4, height*1/4, 40, 75+20, width-75-20, 75+20, height-75-20);
          star1 = new Star(width/2, height-200);
          coin1 = new Coin(200, 400); 
          coin2 = new Coin(400, 400); 
          coin3 = new Coin(400, 350); 
          coin4 = new Coin(190, 459); 
          coin5 = new Coin(600, 540);
          hole1 = new Hole(width/2, height/2);

          turret1 = new Turret(width-150, 200, 80, 80);
          bullet1 = new Bullet(turret1.x-30, turret1.y, 30, 30, 20);

          turret2 = new Turret(width-150, 380, 80, 80);
          bullet2 = new Bullet(turret2.x-30, turret2.y, 30, 30, 30);

          turret3 = new Turret(width-150, 580, 80, 80);
          bullet3 = new Bullet(turret3.x-30, turret3.y, 30, 30, 35);
          count = 0;
          startTime = millis();
          level=2;
        } else if (level==2) {
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
          level=3;
        } else if (level==3) {
          text0X = width/2;
          text0Y = height/2;
          level=4.5;
        }
      }
    }
  }
}