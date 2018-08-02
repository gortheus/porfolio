class Goal2D {
  PShape goalshape2D;
  int w, h;
  Goal2D(int _w, int _h) {
    w = _w;
    h = _h;
    goalshape2D = createShape(RECT, w, h, 50, 50);
  }
  void draw() {
    goalshape2D.setTexture(goalTexture2);
    shape(goalshape2D, 50, 50);
  }
}