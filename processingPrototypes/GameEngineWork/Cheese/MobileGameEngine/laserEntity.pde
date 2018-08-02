class laserEntity extends GameEntity {
  PImage laser;
  int type;

  laserEntity(int _x, int _y, int _w, int _h, int _t) {
    super(_x, _y, _w, _h, _t);
    laser = loadImage(art_path + "laser.png");
    type = _t;
  }
  void draw() {
    pushStyle();
    imageMode(CENTER);
    image(laser, location.x, location.y, size.x, size.y);
    popStyle();
  }
}