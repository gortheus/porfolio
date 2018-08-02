class Goal3D {
  PShape goalShape;
  int w, h, d;
  int x, y, z;
  Goal3D(int _w, int _h, int _d, int _x, int _y, int _z) {
    w = _w;
    h = _h;
    d = _d;
    x = _x;
    y = _y;
    z = _z;
    goalShape = createShape(BOX, w, h, d);
  } 

  void draw() {
    pushMatrix();
    translate(x, y, z);
    goalShape.setStroke(true);
    goalShape.setTexture(goalTexture);
    shape(goalShape, 0, 0);
    popMatrix();
  }
}