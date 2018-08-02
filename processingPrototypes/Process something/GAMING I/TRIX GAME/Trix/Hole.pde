PImage hole;
class Hole {
  int x, y;
  int direction=20;
  Hole(int _x, int _y) {
    x = _x;
    y = _y;
  }

  void draw() {
    image(hole, x, y, 100, 100);
    fill(#FFFFFF, 0);
    rect(x, y, 50, 50);
    x+=direction;
    if (x<=15+20) {
      direction=+20;
    } else if (x>=width-75-20) {
    direction=-20;
    }

    //COLLISION

    if (trix1.x + (trix1.size-10)/2 >= x - 50/2 && trix1.x - (trix1.size-10)/2 <= x + 50/2) //COLLISION X
    {
      if (trix1.y + trix1.size/2 >= y-50/2 && trix1.y - trix1.size/2 <= y+50/2) //COLLISION Y
      {
        if (level==1) {
          level=-1.1;
        }
        if (level==2) {
          level=-1.2;
        }
        if (level==3) {
          level=-1.3;
        }
      }
    }
  }
}