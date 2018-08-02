import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;





/* 
 David Valencia
 Gaming II
 Catch it!!*/


//MUSIC
Minim audioSystem;
AudioPlayer musicPlayer;

//Images
PImage background1;

//Var
int stage = 1;
boolean playMusic = true;

void setup() {
  size(800, 400);
  //IMAGES
  enemyPic = loadImage("enemy.png");
  playerPic = loadImage("player.png");
  background1 = loadImage("background.jpg");

  //MUSIC
  audioSystem = new Minim(this);
  musicPlayer = audioSystem.loadFile("game1.wav");

  //Entities
  player = new player(30);
  enemy = new enemy(30);
}

void draw() {

  imageMode(CENTER);
  background(background1);
  //music
  if (playMusic == true) {
    if (musicPlayer.isPlaying() == false) {
      musicPlayer.loop();
    }
  }
  //Collisions
  approach();
  collision();
  if (stage == 1) {
    player.spawn();
    enemy.spawn();
  }

  if (stage == 2) {
    player = new player(30);
    enemy = new enemy(30);  
    stage2();
  }
}

void keyPressed() {
  player.keyPressed();
  if (key=='r' && stage == 2) {
    playMusic = true;
    stage = 1;
  }
}

void keyReleased() {
  player.keyReleased();
}