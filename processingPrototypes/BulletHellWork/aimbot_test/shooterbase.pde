

class shooter
{
  PVector movement, slope, shtpos, charp;
String bullettype;



  shooter(float pxpos, float pypos, float pxmove, float pymove)
  {
    shtpos= new PVector(pxpos, pypos);
    charp=new PVector();
    slope= new PVector();
    movement= new PVector(pxmove, pymove);
   
  }
  

  void moving()
  {
    shtpos.x+=movement.x;
    shtpos.y+=movement.y;
    if (shtpos.x>=775 || shtpos.x<=0)
    {
      movement.x*=-1;
    }
    if (shtpos.y>=775 || shtpos.y<=0)
    {
      movement.y*=-1;
    }
  }
 
  void run()
  {
   moving();
   draw();
    
  }
  void draw()
  {
    ellipse(shtpos.x, shtpos.y, 50, 50);
  }
}