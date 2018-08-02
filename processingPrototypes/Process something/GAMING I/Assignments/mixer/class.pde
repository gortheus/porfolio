class gamePlayer
{
  boolean moveRight, moveLeft, moveUp, moveDown;
  int x, y, size;

  gamePlayer() 
  {
    x = width/2;
    y = height/2;
    size = 100;
  }

  gamePlayer(int _x, int _y, int _size)
  {
    x = _x;
    y = _y;
    size = _size;
  }

  void draw()
  {
    fill(#3ED3FF, 100);
    ellipse(x, y, size, size);
    if (moveUp==true) {
      y=constrain(y-10,0,height);
    }
    if (moveDown==true) {
      y=constrain(y+10,0,height);
    }
    if (moveRight==true) {
      x=constrain(x+10,0,width);
    }
    if (moveLeft==true) {
      x=constrain(x-10, 0, width);
    }
  }
  void keyPressed()
  {
    if (key=='w' || key=='W')
    {
      moveUp=true;
      sample1.trigger();
    }
    if (key=='s' || key=='S')
    {
      moveDown=true;
      sample2.trigger();
    }
    if (key=='d' || key=='D')
    {
      moveRight=true;
      sample3.trigger();
    }
    if (key=='a' || key=='A')
    {
      moveLeft=true;
      sample1.trigger();
    }
  }

  void keyReleased()
  {
    if (key=='w' || key=='W')
    {
      moveUp=false;
    }
    if (key=='s' || key=='S')
    {
      moveDown=false;
    }
    if (key=='d' || key=='D')
    {
      moveRight=false;
    }
    if (key=='a' || key=='A')
    {
      moveLeft=false;
    }
  }

  void collision()
  {
    //1
    if (x-size/2<=rect1X+rectW/2 && y-size/2 <= rect1Y+rectH/2) {
      collision1=true;
    } else { 
      collision1=false;
    }
    //2
    if (x+size/2>=rect2X-rectW/2 && y-size/2 <= rect1Y+rectH/2) {
      collision2=true;
    } else { 
      collision2=false;
    }
    //3
    if (x-size/2<=rect3X+rectW/2 && y+size/2 >= rect3Y-rectH/2) {
      collision3=true;
    } else { 
      collision3=false;
    }
    //4
    if (x+size/2>=rect4X-rectW/2 && y+size/2 >= rect4Y-rectH/2) {
      collision4=true;
    } else { 
      collision4=false;
    }
  }
}