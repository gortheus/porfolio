PImage turret;
class Turret {
  int x;
  int y;
  int turretW, turretH;

  Turret(int _x, int _y, int _turretW, int _turretH) {
    x = _x;
    y= _y;
    turretW = _turretW;
    turretH = _turretH;
  }


  void draw() {
    imageMode(CENTER);
    image(turret, x, y, turretW, turretH);
    rectMode(CENTER);
    rect(x, y, turretW, turretH-30);
  }
}