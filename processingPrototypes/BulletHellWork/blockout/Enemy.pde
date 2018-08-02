class Enemy {
  //int startTime;       //startTime = millis();
  //int timePassed;      //timePassed = (millis() - startTime)/1000;
  PVector location, size;
  PVector speed = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  //boolean moveRight, moveLeft, moveUp, moveDown = false;
  //boolean shootRight, shootLeft, shootUp, shootDown = false;

  Enemy() {
    this(0, 0, 50, 50);
  }

  Enemy(float x, float y, float w, float h) {
    location = new PVector(x, y);
    size = new PVector(w, h);
  }

  void draw() {
    update();
    pushMatrix();
    translate(location.x, location.y);
    display();
    popMatrix();
  }

  void keyPressed() {
  }

  void keyReleased() {
  }

  void movement() {
  }
  
  void update() {
    movement();
    location.add(speed);
    speed.add(acceleration);
  }

  void display() {
    ellipse(location.x, location.y, size.x, size.y);
  }
  
}
