

class shooter
{
  PVector movement, slope, pos, charp, colors;
  String bullettype;
  PVector centerpos;
  float radius;
  float speed;
  boolean movingcircle;
  String rotation;
  float rotationdegree;//makes starting point
  shooter(float pxpos, float pypos, float pxmove, float pymove)
  {
    pos= new PVector(pxpos, pypos);
    movement= new PVector(pxmove, pymove);
    charp=new PVector();
    slope= new PVector();
    colors= new PVector();
    movingcircle=false;
  }

  shooter( float pxcore, float pycore, float pr, float ps, String protation, float protationdegree)
  {
    pos= new PVector();
    charp=new PVector();
    slope= new PVector();
    colors= new PVector();
    centerpos=new PVector(pxcore, pycore);
    radius=pr;
    speed=ps;
    rotation=protation;
    movingcircle=true;
    rotationdegree=protationdegree;
  }


  void moving()
  {

    if (movingcircle==false)
    {
      pos.x+=movement.x;
      pos.y+=movement.y;
      if (pos.x>=775 || pos.x<=0)
      {
        movement.x*=-1;
      }
      if (pos.y>=775 || pos.y<=0)
      {
        movement.y*=-1;
      }
    }

    if (movingcircle==true)
    {
      if (rotation=="cc")
      {
        rotationdegree-=speed;
      }
      if (rotation=="c")
      {
        rotationdegree+=speed;
      }

      pos.x=centerpos.x+radius*cos(radians(rotationdegree));
      pos.y=centerpos.y+radius*sin(radians(rotationdegree));
    }
  }

  void run(PVector a)
  {
    moving();
    draw(a);
  }
  void run(PVector a, PVector b)
  {
    moving();
    draw(a, b);
  }
  void draw(PVector a)
  {
    fill(a.x, a.y, a.z);
    ellipse(pos.x, pos.y, 50, 50);
  }

  void draw(PVector a, PVector b)
  {

    fill(a.x, a.y, a.z);
    ellipse(pos.x, pos.y, 50, 50);
    fill(b.x, b.y, b.z);
    ellipse(pos.x, pos.y, 30, 30);
  }
}