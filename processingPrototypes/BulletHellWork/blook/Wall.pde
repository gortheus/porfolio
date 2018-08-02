class Wall {
  PShape wall;
  PVector location, size; 
  Wall() {
    this(0, 0, 50, 50);
  }
  Wall(float _x, float _y, float _w, float _h) {
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
    wall = createShape(RECT, 0, 0, _w, _h);
  }
  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    //rotate(0);
    wall.setStroke(false);
    wall.setFill(#F0F0F0);
    shape(wall, 0, 0);
    popMatrix();
  }
  
  void display(){
    
  }
}