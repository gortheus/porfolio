


class character
{
  PVector charp;
boolean up,down,left,right;


 character(float xpos,float ypos)
{
  charp=new PVector(xpos,ypos);
  
}

PVector sendcoords()
{
 return charp; 
}

  void keypressed()
  {
    if (key=='w' && keyPressed==true) {
    up=true;
  }
  if (key=='a' && keyPressed==true) {
    left=true;
  }
  if (key=='s' && keyPressed==true) {
    down=true;
  }
  if (key=='d' && keyPressed==true) {
    right=true;
  }
 
}

  void keyreleased()
  {
    if (key=='w') {
    up=false;
  }
  if (key=='a') {
    left=false;
  }
  if (key=='s') {
    down=false;
  }
  if (key=='d') {
    right=false;
  }
 
}

void move()
{
  
  if(right==true)
  {
    charp.x+=3; 
  }  
  if(left==true)
  {
    charp.x-=3; 
  }  
  if(up==true)
  {
    charp.y-=3; 
  }  
  if(down==true)
  {
    charp.y+=3; 
  }
  fill(125,125,250);
ellipse(charp.x,charp.y,50,50);
}






}