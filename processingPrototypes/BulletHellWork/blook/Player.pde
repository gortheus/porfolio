class Player {
  //int startTime;       //startTime = millis();
  //int timePassed;      //timePassed = (millis() - startTime)/1000;
  PVector location, size;
  PVector speed = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  boolean moveRight, moveLeft, moveUp, moveDown = false;
  boolean shootRight, shootLeft, shootUp, shootDown = false;
  //
  Player() {
    this(0, 0, 50, 50);
  }

  Player(float x, float y, float w, float h) {
    location = new PVector(x, y);
    size = new PVector(w, h);
  }

  void draw() {
    update();
    pushMatrix();
    translate(location.x, location.y);
    display();
    popMatrix();
    camera(location.x, location.y, (height/2.0) / tan(PI*30.0 / 180.0), location.x, location.y, 0, 0, 1, 0);
  }

  void keyPressed() {
    if (key == 'w' || key == 'W') {
      moveUp = true;
    }
    if (key == 's' || key == 'S') {
      moveDown = true;
    }

    if (key == 'd' || key == 'D') {
      moveRight = true;
    }
    if (key == 'a' || key == 'a' ) {
      moveLeft = true;
    }
    if (key == CODED) {
      if (keyCode == UP) {
        moveUp = true;
      }
      if (keyCode == DOWN) {
        moveDown = true;
      }
      if (keyCode == LEFT) {
        moveLeft = true;
      }
      if (keyCode == RIGHT) {
        moveRight = true;
      }
    }
  }

  void keyReleased() {
    if (key == 'w' || key == 'W') {
      moveUp = false;
    } 

    if (key == 's' || key == 'S') {
      moveDown = false;
    }

    if (key == 'd' || key == 'D') {
      moveRight = false;
    }

    if (key == 'a' || key == 'A') {
      moveLeft = false;
    }
    if (key == CODED) {
      if (keyCode == UP) {
        moveUp = false;
      }
      if (keyCode == DOWN) {
        moveDown = false;
      }
      if (keyCode == LEFT) {
        moveLeft = false;
      }
      if (keyCode == RIGHT) {
        moveRight = false;
      }
    }
  }

  void movement() {

    if (moveUp == true) {
      speed.y = -10;
    }
    if (moveDown == true) {
      speed.y = 10;
    }
    if (moveUp == false && moveDown == false) {
      speed.y = 0;
    }

    if (moveRight == true) {
      speed.x = 10;
    }
    if (moveLeft == true) {
      speed.x = -10;
    }
    if (moveRight == false && moveLeft == false) {
      speed.x = 0;
    }
  }
  void update() {
    movement();
    location.add(speed);
    speed.add(acceleration);
  }

  void display() {
    pushStyle();
    noStroke();
    ellipse(location.x, location.y, size.x, size.y);
    popStyle();
  }

  void test() {
  }
}
