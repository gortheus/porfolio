/* 
 David Valencia
 Gaming I
 Collect Game
 */

//Enemies
//1
float _1x;
float _1y;
float _1size=40;
float _1speedx=10;
float _1speedy=-10;
//2
float _2x=0;
float _2y=0;
float _2size=40;
float _2speedx=1;
float _2speedy=5;
float _2arc=0.01;
//3
float _3x;
float _3y;
float _3size=40;
float _3speedx=-8;
float _3speedy=+15;
//GOAL
float _4x;
float _4y;
float _4size=20;
float _4speedx=3;
float _4speedy=0.5;
//CHARACTER
float charsize=20;
//Character movement
boolean right=false;
boolean left=false;
boolean up=false;
boolean down=false;

float charx=0;
float chary;




//stage
String stage="title";

//Text
int _textcolor=#FF004D;
int textR=0;
int textG=0;
int textB=0;
int _textsize=50;
int textY;
int textX;
//TEXT MOVE
int textXmove=0;
int textYmove=0;
int textspeedX=10;
int textspeedY=5;
void setup()
{
  size(800, 600);  
  textY = height/2;
  textX = width/2;
  //CHARACTER
  chary=height/2;
  //enemies
  _1y=height/2;
  _1x=width/2;
  _3x=0;
  _3y=height/2;
  _4x=800;
  _4y=60;
}

void draw()
{
  if (stage=="title")
  {
    title();
  }
  if (stage=="level_1")
  {
    level_1();
  }
  if (stage=="help")
  {
    help();
  }
  if(stage=="fail")
  {
   fail(); 
  }
  if(stage=="win")
  {
   win(); 
  }
}

void keyPressed()
{

  //MOVEMENT
  if (stage=="level_1")
  {
    if (key=='d')
    {
      right=true;
    }
    if (key=='a')
    {
      left=true;
    } 
    if (key=='w')
    {
      up=true;
    } 
    if (key=='s')
    {
      down=true;
    }
  }
}

void keyReleased()
{
  //stage
  if (key==' ')
  {
    if (stage=="help")
    {
      stage= "title";
    } else if (stage=="title")
    {
      stage="level_1";
    } else  if (stage=="level_1")
    {
      stage="fail";
    }
  }

  if (key=='h')
  {
    if (stage=="title")
    {
      stage="help";
    }
  }
   if (key=='n')
   {
  if (stage=="fail")
    {
     stage="title"; 
    }
   }
  //MOVEMENT
  if (stage=="level_1")
  {
    if (key=='d')
    {
      right=false;
    }
    if (key=='a')
    {
      left=false;
    } 
    if (key=='w')
    {
      up=false;
    } 
    if (key=='s')
    {
      down=false;
    }
  }
}