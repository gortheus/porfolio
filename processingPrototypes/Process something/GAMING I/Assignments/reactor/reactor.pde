/* 
  David Valencia
  Gaming I
  Reactor
*/

//background
int backgroundcolor;
int circlewidth;
int circleheight;
int circlecolor;

void setup()
{
    size(450,500);
    backgroundcolor = #00FF1F;
    circlewidth = width;
    circleheight = height;
    circlecolor = #89D9D0;
}

void draw ()
{
 background(backgroundcolor);
 if(mouseY <= height/2)
 {
 background(#0017FF);
 }
 fill(circlecolor);
 ellipse(width/2, height/2, circlewidth, circleheight);
  if(mouseX <= width/2)
{
  circlecolor = #FF8400;
}
if (mouseX > width/2)
{
 circlecolor =  #89D9D0;
}
 circlewidth = circlewidth-10;
 circleheight = circleheight-10;
 if (circleheight <= 0)
{
 circleheight = height; 
 circlewidth = width;
}
}