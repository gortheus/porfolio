
float speedx=2;
float speedy=4;

float x;
float y;
float size=50;

void setup()
{
 size(800,400);
 x=0;
 y= 0;
 noStroke();
}

void draw()
{
 //background(0,225,100);
 fill(225,0,0);
 ellipse(x,y, size, size);
 x= x+1;
 y= 0.01*pow(x,2);
 //x=x+speedx;
 //y=y+speedy;
 //speedy=speedy+2;
}