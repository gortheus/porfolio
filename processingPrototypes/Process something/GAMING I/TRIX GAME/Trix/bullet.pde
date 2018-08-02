class Bullet {

  int x;
  int y;
  int sizeW, sizeH;
  int speed;

  Bullet(int _x, int _y, int _sizeW, int _sizeH, int _speed) {
    x = _x;
    y = _y;
    sizeW = _sizeW;
    sizeH = _sizeH;
    speed = _speed;
  }

  void draw() {
    fill(#0EFF03);
    rect(x, y, sizeW, sizeH);
    x-=speed;

    //COLLISION

    if (trix1.x + (trix1.size-10)/2 >= x - sizeW/2 && trix1.x - (trix1.size-10)/2 <= x + sizeW/2) //COLLISION X
    {
      if (trix1.y + trix1.size/2 >= y - sizeH/2 && trix1.y - trix1.size/2 <= y + sizeH/2) //COLLISION Y
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