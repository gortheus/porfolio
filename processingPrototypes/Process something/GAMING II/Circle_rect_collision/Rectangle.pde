class Rectangle {
  PVector location, size;
  Rectangle() {
    this(0, 0, 50, 40);
  }

  Rectangle(float x, float y, float w, float h) {
    location = new PVector(x, y);
    size = new PVector(w, h);
  }
  
  void draw(){
    rect(location.x,location.y,size.x,size.y);
  }
}
