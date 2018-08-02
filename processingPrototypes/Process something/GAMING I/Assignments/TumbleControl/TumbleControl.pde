/*
Tumble CONTROL
 David Valencia
 */


PImage tumble;
PImage pix;
boolean moveright= false;
boolean moveleft= false;
void setup ()
{
  size(800, 500); 
  noStroke();
  pix = loadImage("pix.png");
  tumble = loadImage("tumbleweed.png");
  x=width/2;
  imagex=width/2;
  imagey=height/2;
  imagewidth=width+500;
  imageheight=height;
}

void draw()
{
  background();
  weed();
}

void keyPressed()
{
  if (key=='d')
  {
    moveright=true;
    spin = 1;
  }
  if (key=='a')
  {
    moveleft=true;
    spin = -1;
  }
}

void keyReleased()
{
  if (key=='d')
  {
    moveright=false;
  }
  if (key=='a')
  {
    moveleft=false;
  }
}