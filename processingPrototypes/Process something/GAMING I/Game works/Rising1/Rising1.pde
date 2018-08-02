/* 
 Rising parte 1
 David Valencia
 Gaming I
 */
float positionx = 50;
float positiony;
int backcolor=#2987FF;
boolean moveRight=false;
boolean moveLeft=false;
boolean moveUp=false;
boolean moveDown=false;

void setup ()
{
  size(800, 600);
  noStroke();
  positiony = height/2;
}



void draw ()
{
  background(backcolor);
  fill(#7FFC38);
  ellipse(positionx, positiony, 30, 30);

  //MOVEMENT

  if (moveUp==true)
  {
    positiony = constrain(positiony-5, 0, height);
  }
  if (moveDown==true)
  {
    positiony = constrain(positiony+5, 0, height);
  }
  if (moveRight==true)
  {
    positionx = constrain(positionx+5, 0, width);
  }
  if (moveLeft==true)
  {
    positionx = constrain(positionx-5, 0, width);
  }
  if ( positionx >= width/2)
  {
    backcolor=#0AFF0C;
  } else {
    backcolor=#2987FF;
  }
}

void keyPressed()
{

  //regular movement

  if (key=='w')
  {
    moveUp=true;
  }
  if (key=='s')
  {
    moveDown=true;
  }
  if (key=='d')
  {
    moveRight=true;
  }
  if (key=='a')
  {
    moveLeft=true;
  }
}

void keyReleased()
{
  if (key=='w')
  {
    moveUp=false;
  }
  if (key=='s')
  {
    moveDown=false;
  }
  if (key=='d')
  {
    moveRight=false;
  }
  if (key=='a')
  {
    moveLeft=false;
  }
}