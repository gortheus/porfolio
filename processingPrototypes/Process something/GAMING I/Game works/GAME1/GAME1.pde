/*
 David Valencia
 Gaming I
 Game1
 */

//GAME STARTS HERE//

//SCENE

char scenenumb = '1';

//TEXT

//RGBtext(scene 2)
int _textr = 0;
int _textg = 0;
int _textb = 0;

//(Scene1 and 3 text)
int _textsize = 55;
int _textcolor = 22;
boolean texton = false;

//Background

int backcolor=#2987FF;

//Character Position

float positionx;
float positiony;

//CONTROLS

boolean moveRight=false;
boolean moveLeft=false;
boolean moveUp=false;
boolean moveDown=false;


void setup()
{
  size(800, 600);
}

void draw()
{
  if (scenenumb=='1')
  {
    noStroke();
    background(#219DC1);
    intro();
  }
  if (scenenumb=='2')
  {
    rising();
  }
  if (scenenumb=='3')
  {
    resolution();
  }
}

void keyPressed()
{

  //CONTROLS

  if (scenenumb=='2')
  {
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
}

void keyReleased()
{
  //SCENE CHANGES

  if (scenenumb=='1' && key==' ')
  {
    scenenumb='2';
    positionx = 50;
    positiony = height/2;
  } else {
    if (scenenumb=='3' && key==' ')
    {
      scenenumb='1';
    }
  }

  //CONTROLS

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