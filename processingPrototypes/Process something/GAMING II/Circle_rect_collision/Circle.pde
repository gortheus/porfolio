class Circle {
  PVector location, size;
float r;
  Circle() {
    this(0, 0, 10, 10);
  }

  Circle(float x, float y, float w, float h) {
    location = new PVector(x, y);
    size = new PVector(w, h);
    r = w/2;
  }
  void draw(){
   ellipse(location.x,location.y, size.x, size.y); 
  }
  
  
}
