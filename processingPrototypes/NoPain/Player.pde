class Player {
  PVector location, size;
  PVector speed = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0.9);
  boolean moveRight, moveLeft, moveUp, moveDown = false;
  PShape player;
  int health, fill;
  String lastPressed; 
  //int startTime;       //startTime = millis();
  //int timePassed;      //timePassed = (millis() - startTime)/1000;
  boolean collUp, collDown, collLeft, collRight, grounded = false;
  PImage face;
  Player() {
    this(0, 0, 50, 50);
  }

  Player(float _x, float _y, float _w, float _h) {
    location = new PVector( _x, _y);
    size = new PVector(_w, _h);
    player = createShape(RECT, 0, 0, _w, _h);
    health = 200;
    fill = 0;
    face =  loadImage("human.png");
    face.resize(int(size.x), int(size.y));
  }

  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    //rotate(0);
    update();
    display();
    popMatrix();
    health -= 1;
    println(health);
    camera(location.x, location.y, (height/2.0) / tan(PI*30.0 / 180.0), location.x, location.y, 0, 0, 1, 0);
  }

  void keyPressed() {
    if (key == 'w' || key == 'W') {
      moveUp = true;
      lastPressed = "up";
    }
    if (key == 's'|| key == 'S') {
      moveDown = true;
      lastPressed = "down";
    }

    if (key == 'd' || key == 'D') {
      moveRight = true;
      lastPressed = "down";
      acceleration.x = 0.5;
    }
    if (key == 'a' || key == 'a') {
      moveLeft = true;
      acceleration.x = -0.5;
      lastPressed = "left";
    }
  }

  void keyReleased() {
    if (key == 'w' || key == 'W') {
      moveUp = false;
      //speed.y = 0;
    } 

    if (key == 's' || key == 'S') {
      moveDown = false;
      //speed.y = 0;
    }

    if (key == 'd' || key == 'D') {
      moveRight = false;
      //speed.x = 0;
      acceleration.x = 0;
    }

    if (key == 'a' || key == 'a') {
      moveLeft = false;
      //speed.x = 0;
      acceleration.x = 0;
    }
  }
  void update() {
    movement();
    //speed.limit(10);
    location.add(speed);
    speed.add(acceleration);
  }
  void display() {
    pushStyle();
    player.setStroke(false);
    //player.setFill();
    shapeMode(CENTER);
    shape(player, 0, 0);
    imageMode(CENTER);
    image(face, 0, 0);
    popStyle();
  }

  void jump(ArrayList<Wall> walls) {
    for (Wall w : walls) {
      if (location.y+size.y/2 > w.location.y-w.size.y/2 && location.y-size.y/2 < w.location.y+w.size.y/2 ) { 
        if (location.x+size.x/2 > w.location.x-w.size.x/2 && location.x - size.x/2 < w.location.x+w.size.x/2) {
          if (moveUp == true) {
            speed.y = -20;
            health -= 5;
          }
        }
      }
    }
  }

  void movement() {
    //if (moveUp == true && grounded == true) {
    //  speed.y = -20;
    //  health -= 5;
    //}
    if (moveDown == true  /*&& grounded == true*/) {
      //speed.y = 5;
      acceleration.y = 1.4;
    } else if (moveDown == false) { 
      acceleration.y = 0.9;
    }
    if (moveRight == true) {
      //speed.x = 10;
      acceleration.x = 0.4;
    }
    if (moveLeft == true) {
      //speed.x = -10;
      acceleration.x = -0.4;
    }
    if (moveLeft == false && moveRight == false) {
      //speed.x = 0;
      acceleration.x = 0;
    }
  }
}