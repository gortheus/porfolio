
class bullet
{
  PVector pos; 
  PVector initialv;
  int r, g, b;//decides color of bullet

  bullet(PVector p, PVector v, int pr, int pg, int pb )
  {
    pos= p.copy(); 
    initialv=v.copy();
    r=pr;
    g=pg;
    b=pb;
  }
  void movement()
  {
    pos.x=pos.x+(initialv.x);
    pos.y=pos.y+(initialv.y);
  }

  void draw()
  {
    fill(r, g, b);
    ellipse(pos.x, pos.y, 20, 20);
  }

  void run()
  {
      draw();
      movement();
      collision();
    
  }

  boolean isdead()
  {
    
    if(state=="ded")
    {
      return true;
      
    }
    if (pos.x>=800 || pos.x<=0)
    {
      return true;
    } else
    {
      if (pos.y>800 || pos.y<=0)
      {
        return true;
      } else {
        return false;
      }
    }
  }
  
  
  
  void collision()
  {
    if(key!='p')
    {
    if(dist(ch1.sendcoords().x,ch1.sendcoords().y,pos.x,pos.y)<=25)
    {
      state="ded";
      
    }
    }
  
}
}