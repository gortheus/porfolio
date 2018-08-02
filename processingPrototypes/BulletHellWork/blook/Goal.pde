class Goal {
  PVector location, size;  
  PShape goal;
  PVector speed = new PVector(1, 1);
  Goal() {
    this(0, 0, 50, 50);
  }
  Goal(float _x, float _y, float _w, float _h) {
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
    goal = createShape(RECT, 0, 0, _w, _h);
  }
  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    //rotate(0);
    display();
    popMatrix();
  }
  void display() {
    pushStyle();
    goal.setStroke(false);
    goal.setFill(#1400FC);
    shapeMode(CENTER);
    ellipse(0, 0, size.x, size.y);
    popStyle();
  }
  void update() {
    location.add(speed);
  }
  void movementConstrain(float xMin, float xMax, float yMin, float yMax) {
    if (location.x <= xMin) {
      speed.mult(-1);
    }
    if (location.x >= xMax) {
      speed.mult(-1);
    }
    if (location.y <= yMin) {
      speed.mult(-1);
    }
    if (location.y >= yMax) {
      speed.mult(-1);
    }
  }
}
