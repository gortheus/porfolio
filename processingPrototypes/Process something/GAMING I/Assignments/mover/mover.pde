/*
  David Valencia
  Gaming1
  Rectangle (left-right)
*/


int start;
void setup()
{
  size(800,400);
  fill(#7C0000);
  start = -150;
  
}

void draw()
{
 background(#030303);
 fill(#F0F0F0);
 rect(start, height-100, 150, 100);
 start = start+ 5;
 if  (start >= width )
{
  start = -150;

}

 

 
}