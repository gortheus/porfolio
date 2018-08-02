class GameEntity {
  PVector location, size;
  String art_path = "data/art/";
  float leftSide, rightSide, upSide, downSide;
  float halfW, halfH; 
  int type;
  GameLevel level;

  //GameEntity() {
  //  this(0, 0, 10, 10);
  //}

  GameEntity(int _x, int _y, int _w, int _h, int _t)
  {  
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
    type = _t;
    halfW = size.x/2;
    halfH = size.y/2;
    leftSide = location.x-halfW;
    rightSide = location.x+halfW;
    upSide = location.y-halfH;
    downSide = location.y+halfH;
  }

  void update()
  {
    //default is no movement...
  }

  void draw()
  {
    pushStyle();
    imageMode(CENTER);
    popStyle();
  }

  void mousePressed() {
  }

  int type() {
    return type;
  }
}