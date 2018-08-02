/*
  David Valencia
  Gaming1
  Fader
*/

int fader;

void setup()
{
size(600,400);
fader = 400;
}

void draw()
{
background(0);
fill(#FFFFFF,fader);
triangle(width/2, 0, width, height/2, 0, height/2);
fader = fader-5;

if (fader <= 0)
{
  fader = 400;
}  
  println(fader);
}