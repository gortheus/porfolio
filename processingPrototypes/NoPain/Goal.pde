class Goal {
  PVector location, size;  
  PShape goal;
  Goal() {
    this(0, 0, 50, 50);
  }
  Goal(float _x, float _y, float _w, float _h) {
    //super(_x, _y, _w, _h);
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
    goal = createShape(RECT, 0, 0, _w, _h);
  }
  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    //rotate(0);
    goal.setStroke(false);
    goal.setFill(#1400FC);
    shapeMode(CENTER);
    shape(goal, 0, 0);
    popMatrix();
  }
}