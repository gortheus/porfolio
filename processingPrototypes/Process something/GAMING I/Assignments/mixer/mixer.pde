import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
/* 
 David Valencia 
 Remixer
 */
//MINIM
Minim audioSystem;
AudioPlayer players;
AudioSample sample1, sample2, sample3;

//game var
float rect1X, rect2X, rect3X, rect4X;
float rect1Y, rect2Y, rect3Y, rect4Y; 
float rectW, rectH;
// GAME
boolean collision1;
boolean collision2;
boolean collision3;
boolean collision4;
gamePlayer player;
void setup()
{
  size(800, 500);
  rectMode(CENTER);
  //RECTANGLES
  //rect1
  rect1X = width*1/4;
  rect1Y = height*1/4;
  rect2X = width*3/4;
  rect2Y = height*1/4;
  rect3X = width*1/4;
  rect3Y = height*3/4;
  rect4X = width*3/4;
  rect4Y = height*3/4;
  rectW = width/2;
  rectH = height/2;
  player = new gamePlayer(width/2, height/2, 50);

  //MINIM
  audioSystem = new Minim(this);
  players = audioSystem.loadFile("rick.mp3");
  sample1 = audioSystem.loadSample("sample1.wav");
  sample2 = audioSystem.loadSample("sample2.wav");
  sample3 = audioSystem.loadSample("sample3.wav");
}


void draw()
{
  drawBack();
  player.draw();
  player.collision();
  if (collision1==true)
  {
    players.play();
  }
}

void keyPressed()
{
  player.keyPressed();
}

void keyReleased()
{
  player.keyReleased();
}