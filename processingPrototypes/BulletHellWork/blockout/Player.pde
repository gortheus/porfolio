class Player {
  //int startTime;       //startTime = millis();
  //int timePassed;      //timePassed = (millis() - startTime)/1000;
  PVector location, size;
  PVector speed = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  boolean moveRight, moveLeft, moveUp, moveDown = false;
  boolean shootRight, shootLeft, shootUp, shootDown = false;
  //
  PVector shieldLocation, shieldSize;
  int t;
  boolean shieldRight, shieldLeft = false;

  Player() {
    this(0, 0, 50, 50);
  }

  Player(float x, float y, float w, float h) {
    location = new PVector(x, y);
    size = new PVector(w, h);
    shieldSize = new PVector(20, 20);
    shieldLocation = new PVector();
  }

  void draw() {
    update();
    pushMatrix();
    translate(location.x, location.y);
    shield();
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
    if (key == 't') {
      shieldRight = true;
      shieldLeft = false;
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
    if (key == 't') {
      shieldLeft = true;
      shieldRight = false;
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

  void shield() {
    //MOVEMENT
    if (shieldRight == true) {
      t += 10;
    }
    if (shieldLeft == true) {
      t -= 10;
    }
    shieldLocation.x = location.x+shieldSize.x*cos(radians(t)); // cos(b) = x/1 -> cos(b)*1 = x  <- 1 in the unit circle so if you want to change the size, change this
    shieldLocation.y = location.y+shieldSize.y*sin(radians(t));
    //DISPLAY
    pushStyle();
    noStroke();
    fill(#030000);
    ellipse(shieldLocation.x, shieldLocation.y, 40, 40);
    popStyle();
  }

  void test() {
  }
}
