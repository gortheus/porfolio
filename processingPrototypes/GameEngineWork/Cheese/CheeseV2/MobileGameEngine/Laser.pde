class Laser extends GameEntity {
  PImage laser;
  int type;

  Laser(int _x, int _y, int _w, int _h) {
    super(_x, _y, _w, _h);
    laser = loadImage("images/laser.png");
  }
  void draw() {
    pushStyle();
      imageMode(CENTER);
      image(laser, location.x, location.y, size.x, size.y);
    popStyle();
  }
}
