class Ball
{
  int size;

  Ball()
  {
    size=100;
  }

  Ball(int _size)
  {
    size=_size;
  }
  void create()
  {
    noFill();
    stroke(255);
    sphere(size);
  }
  void basic()
  {
    fill(255);
    stroke(100);
    sphere(size);
  }
  void grow()
  {
    if (keyPressed)
    {
      if (key=='q')
      {
        size+=1;
      }
      if(key=='e')
      {
       size-=1; 
      }
    }
  }
  
}