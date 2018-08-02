class WallEntity extends GameEntity {

  PImage wall;
  float leftSide, rightSide, upSide, downSide;
  float halfW, halfH; 
  int type;

  WallEntity(int _x, int _y, int _w, int _h, int _t) {
    super(_x, _y, _w, _h, _t);
    wall = loadImage(art_path + "wall.png");
    type = _t;
  }
  void draw() {
    image(wall, location.x, location.y, size.x, size.y);
    leftSide = location.x-halfW;
    rightSide = location.x+halfW;
    upSide = location.y-halfH;
    downSide = location.y+halfH;
  }
  int type() {
    return type;
  }
}  