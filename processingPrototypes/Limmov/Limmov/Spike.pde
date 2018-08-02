class Spike {
  PVector location, size;  
  PShape spike;
  Spike() {
    this(0, 0, 50, 50);
  }
  Spike(float _x, float _y, float _w, float _h) {
    //super(_x, _y, _w, _h);
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
    spike = createShape(RECT, 0, 0, _w, _h);
  }
  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    //rotate(0);
    spike.setStroke(false);
    spike.setFill(#FA1735);
    shapeMode(CENTER);
    shape(spike, 0, 0);
    popMatrix();
  }
}