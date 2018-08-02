basic c;
class Ball {
  //variables
  int x, y, size;

  //Constructor  SAME NAME AS CLASS ___ NO RETURN DATA
  Ball()
  {
    x= width/2;
    y=height/2;
    size=100;
  }

  Ball(int _x, int _y, int _size)
  {
    x = _x;
    y = _y;
    size = _size;
  } 

  //functions/methods USE DOT (.) OPERATOR
  void show()
  {
    x = c.x;
    ellipse(x, y, size, size);
  }
}