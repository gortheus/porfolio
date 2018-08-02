import ddf.minim.*;

/*
TRIX
 David Valencia
 Gaming 1
 */
float level = 0;
void setup() {
  size(1000, 700);
  //SIZE RELATED VARIABLES
  text0X = width/2;
  text0Y = height/2;

  //IMAGE LOAD
  Trix = loadImage("Trix.png");
  coin = loadImage("coin.png");
  back1 = loadImage("back1.png");
  back2 = loadImage("back2.png");
  back3 = loadImage("back3.png");

  hole = loadImage("hole.png");
  turret = loadImage("turret.png");
  star = loadImage("star.png");

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

void draw() {
  if (level == -1.1) {
    loose(); 
    if (key == 'y') { 
      trix1 = new Gamer(width*1/4, height*1/4, 40, 75+20, width-75-20, 75+20, height-75-20);
      hole1 = new Hole(width/2, height/2);

      turret1 = new Turret(width-150, 180, 80, 80);
      bullet1 = new Bullet(turret1.x-30, turret1.y, 30, 30, 20);

      turret2 = new Turret(width-150, 280, 80, 80);
      bullet2 = new Bullet(turret2.x-30, turret2.y, 30, 30, 30);

      turret3 = new Turret(width-150, 480, 80, 80);
      bullet3 = new Bullet(turret3.x-30, turret3.y, 30, 30, 35);
      level = 1;
    }
  } 
  if (level == -1.2) {
    loose(); 
    if (key == 'y') { 

      trix1 = new Gamer(width*1/4, height*1/4, 40, 75+20, width-75-20, 75+20, height-75-20);
      star1 = new Star(width/2, height-200);
      coin1 = new Coin(200, 400); 
      grab1 = false;
      coin2 = new Coin(400, 400); 
      grab2 = false;
      coin3 = new Coin(400, 350); 
      grab3 = false;
      coin4 = new Coin(190, 459); 
      grab4 = false;
      coin5 = new Coin(600, 540); 
      grab5 = false;
      count = 0;

      hole1 = new Hole(width/2, height/2);

      turret1 = new Turret(width-150, 200, 80, 80);
      bullet1 = new Bullet(turret1.x-30, turret1.y, 30, 30, 20);

      turret2 = new Turret(width-150, 380, 80, 80);
      bullet2 = new Bullet(turret2.x-30, turret2.y, 30, 30, 30);

      turret3 = new Turret(width-150, 580, 80, 80);
      bullet3 = new Bullet(turret3.x-30, turret3.y, 30, 30, 35);
      startTime = millis();
      level = 2;
    }
  }
  if (level==-1.3) {
    loose();
    if (key == 'y') {
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
    }
  }
  if (level == 0) {
    level0();//Opening
  }
  if ( level == 0.5) {
    level05();//help
  }
  if (level == 1) {
    level1();
  }
  if (level == 2) {
    level2();
  }
  if (level == 3) {
    level3();
  }
  if (level == 4.5) {
    level45();
  }
  if(level == 4.6){
   level46(); 
  }
  if (level == 4) {
    win();
    if (key=='y') {
      level=0;
    }
  }
  println(level);
}

void keyPressed() {
  trix1.keyPressed();
}

void keyReleased() {
  trix1.keyReleased();
}