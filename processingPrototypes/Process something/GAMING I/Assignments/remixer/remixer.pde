import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

/*
Remixer
 David Valencia
 */
//IMAGE
PImage circle1, circle2, circle3;
int x1;
int y1;
int x2;
int y2;
int x3;
int y3;
int r=150/2;

//MINIM
Minim audioSystem;
AudioPlayer player;
AudioSample sample1,sample2,sample3;

void setup()
{
  //MINIM
  audioSystem = new Minim(this);
  player = audioSystem.loadFile("rick.mp3");
  sample1 = audioSystem.loadSample("sample1.wav");
  sample2 = audioSystem.loadSample("sample2.wav");
  sample3 = audioSystem.loadSample("sample3.wav");  
  //GAME MEASUREMENTS
  size(800, 500);
  x1 = width*1/4;
  y1 = height*1/4;
  x2 = width*3/4;
  y2 = height*1/4;
  x3 = width*2/4;
  y3 = height*2/4;

  circle1 = loadImage("circlesample1.png");
  circle2 = loadImage("circlesample2.png");
  circle3 = loadImage("circlesample3.png");
  imageMode(CENTER);
}

void draw()
{
  drawcircles();
}

void keyPressed()
{
  backmusique();
}

void mousePressed()
{
  collisionplay();
}