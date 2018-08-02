class Player {
  PVector location, size;
  PVector speed = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0.9);
  boolean moveRight, moveLeft, moveUp, moveDown = false;
  //PShape player;
  //int startTime;       //startTime = millis();
  //int timePassed;      //timePassed = (millis() - startTime)/1000;

  Player() {
    //this(0, 0, 50, 50);
  }

  Player(float _BLANK_) {
  }

  void draw() {
    pushMatrix();
    update();
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

    if (key == 'a' || key == 'a') {
      moveLeft = false;
    }
  }

  void movement() {
    if (moveUp == true) {
      speed.y = -20;
    }
    if (moveDown == true) {
      speed.y = 10;
    }
    if (moveRight == true) {
      speed.x = 10;
    }
    if (moveLeft == true) {
      speed.x = -10;
    }
  }
  void update() {
    movement();
    location.add(speed);
    speed.add(acceleration);
  }

  void display() {
  }
}
