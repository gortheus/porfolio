
class bullet
{
  PVector bullpos; 
  PVector initialv;
  int r,g,b;

  bullet(PVector p, PVector v, int pr, int pg, int pb )
  {
    bullpos= p.copy(); 
    initialv=v.copy();
    r=pr;
    g=pg;
    b=pb;
  }
  void movement()
  {
    bullpos.x=bullpos.x+(initialv.x);
   bullpos.y=bullpos.y+(initialv.y); 
  }
  
  void draw()
  {
    fill(r,g,b);
    ellipse(bullpos.x,bullpos.y,20,20);
  }
  
  void run()
{
  
  
  if(isdead())
  {
    
    
  }else
  {
    draw();
  movement();
  }
  
}
  
  boolean isdead()
  {
    if(bullpos.x>=800 || bullpos.x<=0)
    {
      return true;
    }else
    {
      if(bullpos.y>800 || bullpos.y<=0)
      {
        return true;
        
      }else{
    return false;
      }
    }
  }
}