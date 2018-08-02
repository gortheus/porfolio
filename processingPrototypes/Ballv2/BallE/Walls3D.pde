class Wall3D {
  PShape wallShape;
  int w, h, d;
  int x, y, z;
  Wall3D(int _w, int _h, int _d, int _x, int _y, int _z) {
    w = _w;
    h = _h;
    d = _d;
    x = _x;
    y = _y;
    z = _z;
    wallShape = createShape(BOX, w, h, d);
  } 

  void draw() {
    pushMatrix();
    translate(x, y, z);
    shape(wallShape, 0, 0);
    popMatrix();
  }
}