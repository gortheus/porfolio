class Shooter {
  PVector location, size, speed, acceleration;
  
  Shooter(PVector _location, PVector _size) {
    location= _location.copy();
    size = _size.copy();
    speed = new PVector(0,0);
    acceleration = new PVector(0,0);
  }

  void draw() {
    update();
    pushMatrix();
    translate(location.x, location.y);
    display();
    popMatrix();
  }

  void update() {
    movement();
    location.add(speed);
    speed.add(acceleration);
  }

  void movement(){
    
  }
  void display() {
    ellipse(location.x, location.y, size.x, size.y);
  }
}
