class seekingbullet
{
  PVector pos; 
  PVector initialv;
  int r, g, b;//decides color of bullet
  PVector charp;
  PVector slope, posc, difference;
  float bulletangle;
  float lifespan;

  seekingbullet(PVector p)
  {
    pos= p.copy(); 
    charp= new PVector();
    slope= new PVector();
    posc= new PVector();
    difference= new PVector();
    lifespan = 250.0;
  }
  void movement()
  {
    charp.set(ch1.sendcoords());
    posc.set(pos);
    difference.set(charp.x-posc.x, charp.y-posc.y);
    bulletangle=atan(difference.y/difference.x);
    //println(bulletangle);
    if (charp.x<pos.x)
    {
      slope.x=-2*cos(bulletangle);
      slope.y=-2*sin(bulletangle);
    } else
    {
      slope.x=2*cos(bulletangle);
      slope.y=2*sin(bulletangle);
    }
    pos.x+=slope.x;
    pos.y+=slope.y;
    lifespan -= 1;
  }

  void draw()
  {
    fill(0);
    ellipse(pos.x, pos.y, 20, 20);
    fill(lifespan+15, 10, 10);
    ellipse(pos.x, pos.y, 10, 10);
  }

  void run()
  {
    draw();
    movement();
    collision();
  }

  boolean isdead()
  {

    if (state=="ded")
    {
      return true;
    }
    if (lifespan < 0.0) {
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
    if (key!='p')
    {
      if (dist(ch1.sendcoords().x, ch1.sendcoords().y, pos.x, pos.y)<=25)
      {
        state="ded";
      }
    }
  }
}