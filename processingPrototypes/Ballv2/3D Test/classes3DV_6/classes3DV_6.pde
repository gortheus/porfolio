import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam camera;
Ball player;
Ball follow;
float turnX;
int x;
int stage;
float eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ;
int moveX,moveY;
int r;
float camRotate;
void setup()
{
  size(800, 800, P3D); 
  camera=new PeasyCam(this, 0, 0, 0, 50);
  player= new Ball(100);
  follow= new Ball(r);
  turnX=0;
  x=0;
  stage=0;
  eyeX=width/2;
  eyeY=height/2;
  eyeZ=(height/2.0) / tan(PI*30.0 / 180.0);
 centerX=width/2;
  centerY=height/2;
  centerZ=0;
  upX=0;
 upY=1;
  upZ=0;
  r=50;
  camRotate=0;
  moveX=width/2;
  moveY=height/2;
  
}

void draw()
{
  
  if(stage==0)
  {
  background(255);

  }
  if(stage==1)
  {
  one();
  }
  if(stage==2)
  {
  two();
  }
  println(r);
}
void keyPressed()
{
   if(key=='1')
    {
       stage=1;
    }
    if(key=='2')
    {
    eyeY=1600;
    centerX=moveX;
       stage=2;
    }
}