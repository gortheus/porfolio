class Wall {
  PShape wall;
  PVector location, size;
  boolean grounded = false;
  Wall() {
    this(0, 0, 50, 50);
  }
  Wall(float _x, float _y, float _w, float _h) {
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
    wall = createShape(RECT, 0, 0, _w, _h);
  }
  void draw() {
    //rect(location.x, location.y, size.x, size.y);
    pushMatrix();
    translate(location.x, location.y);
    //rotate(0);
    wall.setStroke(false);
    wall.setFill(#FFFFFF);
    shape(wall, 0, 0);
    popMatrix();
  }
}