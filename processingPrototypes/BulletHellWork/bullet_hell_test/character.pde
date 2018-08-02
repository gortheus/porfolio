


class character
{
  PVector opos;//position at spawn
  PVector pos;//position, universal to almost all classes
  boolean up, down, left, right;


  character(float xpos, float ypos)
  {
    pos=new PVector(xpos, ypos);
    opos= new PVector(xpos,ypos);
  }
  
  void wincondition()
  {
    if(victorypoints>=1000)
    {
      state="won";
    }

  }

  PVector sendcoords()
  {
    return pos;
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
  {  if(resetting==true)
  {
    pos.x=400;
    pos.y=400;
    resetting=false;
  }


    if (right==true && pos.x<785)
    {
      pos.x+=3.75;
    }  
    if (left==true && pos.x>15)
    {
      pos.x-=3.75;
    }  
    if (up==true && pos.y>15)
    {
      pos.y-=3.75;
    }  
    if (down==true && pos.y<785)
    {
      pos.y+=3.75;
    }
    fill(125, 125, 250);
    ellipse(pos.x, pos.y, 30, 30);
    fill(0);
    ellipse(pos.x-10,pos.y,2.5,10);
    ellipse(pos.x+10,pos.y,2.5,10);
  }

}