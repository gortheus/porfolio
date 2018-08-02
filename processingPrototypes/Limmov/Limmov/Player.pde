class Player {
  PShape player;
  PVector location, size, halfSize;
  PVector speed = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  boolean moveRight, moveLeft, moveUp, moveDown = false;
  float startTime, timePassed, timeLimit;
  int health;
  boolean movement = false;
  //boolean collUp, collDown, collLeft, collRight = false;
  String lastPressed = "none";
  Player() {
    this(0, 0, 50, 50);
  }

  Player(float _x, float _y, float _w, float _h) {
    timeLimit = 0.5;
    health = 225;
    location = new PVector( _x, _y);
    size = new PVector(_w, _h);
    halfSize = new PVector(size.x/2, size.y/2);
    player = createShape(RECT, 0, 0, _w, _h);
  }

  void draw() {
    //DRAW
    displayOther();
    pushMatrix();
    translate(location.x, location.y);
    //rotate(0);
    display();
    update();
    popMatrix();
    camera(location.x, location.y, (height/2.0) / tan(PI*30.0 / 180.0), location.x, location.y, 0, 0, 1, 0);
  }

  void keyPressed() {
    if (key == 'w' || key == 'W') {
      //speed.y = -10;
      //acceleration.y = -0.09;
      //lastPressed = "up";
      startTime = millis();
      moveUp = true;
    }
    if (key == 's' || key == 'S') {
      //speed.y = 10;
      //acceleration.y = 0.09;
      //lastPressed = "down";
      startTime = millis();
      moveDown = true;
    }

    if (key == 'd' || key == 'D') {
      //speed.x = 10;
      //acceleration.x = 0.09;
      //lastPressed = "right";
      //acceleration.x = 0.5;
      startTime = millis();
      moveRight = true;
    }
    if (key == 'a' || key == 'a') {
      //speed.x = -10;
      //acceleration.x = -0.09;
      //lastPressed = "left";
      //acceleration.x = -0.5;
      startTime = millis();
      moveLeft = true;
    }
  }

  void keyReleased() {
    if (key == 'w' || key == 'W') {
      //speed.y = 0;
      //acceleration.y = 0;
      moveUp = false;
    }

    if (key == 's' || key == 'S') {
      //speed.y = 0;
      //acceleration.y = 0;
      moveDown = false;
    }

    if (key == 'd' || key == 'D') {
      //speed.x = 0;
      //acceleration.x = 0;
      moveRight = false;
    }

    if (key == 'a' || key == 'a') {
      //speed.x = 0;
      //acceleration.x = 0;
      moveLeft = false;
    }
  }
  void update() {
    timePassed = (millis() - startTime)/1000;
    if (moveUp == true && lastPressed != "up") {
      //speed.y = -10;
      //location.add(speed);
      //location.y -= speed.y;
      //acceleration.y = -0.09;
      if (timePassed >= timeLimit) {
        lastPressed = "up";
      }
      location.y -= 10;
    } //else {
    //  speed.y = 0;
    //}

    if (moveDown == true && lastPressed != "down") {
      //speed.y = 10;
      //location.add(speed);
      //location.y += speed.y;
      //acceleration.y = 0.09;
      if (timePassed >= timeLimit) {
        lastPressed = "down";
      }
      location.y += 10;
    } //else {
    // speed.y = 0;
    //}

    if (moveRight == true && lastPressed != "right") {
      //speed.x = 10;
      //location.add(speed);
      //location.x += speed.x;
      //acceleration.x = 0.09;
      if (timePassed >= timeLimit) {
        lastPressed = "right";
      }
      location.x += 10;
    } //else {
    //  speed.x = 0;
    //}

    if (moveLeft == true && lastPressed != "left") {
      //speed.x = -10;
      //location.add(speed);
      //location.x -= speed.x;
      //acceleration.x = -0.09;
      if (timePassed >= timeLimit) {
        lastPressed = "left";
      }
      location.x -= 10;
    } //else {
    //  speed.x = 0;
    //}
    if (timePassed >= timeLimit) { //moveUp == false && moveDown == false && moveRight == false && moveLeft == false
      movement = false;
    } else movement = true;
    speed.limit(5);
    location.add(speed);
    speed.add(acceleration);
  }
  void display() {
    player.setStroke(false);
    player.setFill(-255+health);
    shapeMode(CENTER);
    shape(player, 0, 0);
  }
  void displayOther() {
    //Text Time Limit
    pushStyle();
    //textMode(CENTER);
    fill(#46FF66);
    textSize(50);
    stroke(200);
    if (movement == false) {
      text("MOVE!", location.x-50, location.y+80);
    } else {
      text(str(timePassed), location.x-50, location.y+80);
    }
    popStyle();
    //Line Warning
    pushStyle();
    strokeWeight(4);
    stroke(#FFFFFF,timePassed*200);
    if (lastPressed == "up") {
      line(location.x-100, location.y-halfSize.y, location.x+100, location.y-halfSize.y);
    }
    if (lastPressed == "down") {
      line(location.x-100, location.y+halfSize.y, location.x+100, location.y+halfSize.y);
    }
    if (lastPressed == "right") {
      line(location.x+halfSize.x, location.y-100, location.x+halfSize.x, location.y+100);
    }
    if (lastPressed == "left") {
      line(location.x-halfSize.x, location.y-100, location.x-halfSize.x, location.y+100);
    }
    popStyle();
  }
}