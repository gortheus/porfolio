class Pellet3D {
  PShape pelletShape;
  int w, h, d;
  int x, y, z;
  boolean show = true;
  boolean pelletColl = false;
  boolean canSize = true;
  int state = 0;
  Pellet3D(int _w, int _h, int _d, int _x, int _y, int _z) {
    w = _w;
    h = _h;
    d = _d;
    x = _x;
    y = _y;
    z = _z;
    pelletShape = createShape(BOX, w, h, d);
  } 

  void draw() {
    if (show == true) {
      pushMatrix();
      translate(x, y, z);
      pelletShape.setStroke(false);
      pelletShape.setTexture(pelletTexture);
      shape(pelletShape, 0, 0);
      popMatrix();
    }
  }
}