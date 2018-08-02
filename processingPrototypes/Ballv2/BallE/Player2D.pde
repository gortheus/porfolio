class Player2D {
  PShape playerShape;
  int speed=10;
  float x, y, w, h;
  boolean moveUp, moveDown, moveLeft, moveRight, moveOut, moveIn = false;
  Player2D(int _x, int _y, int _w, int _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;

    playerShape = createShape(ELLIPSE, x, y, w, h);
  }

  void draw() {

    if (moveUp == true) { 
      y -= 10;
    }
    if (moveDown == true) { 
      y += 10;
    }
    if (moveRight == true) { 
      x += 10;
    }
    if (moveLeft == true) { 
      x -= 10;
    }; 


    playerShape.setStroke(true);
    shape(playerShape, x, y);

    if (player == 1) {
      OscMessage connect = new OscMessage(playerOne2DPattern);
      connect.add(x);
      connect.add(y);
      oscP5.send(connect, myBroadcastLocation);
    }
    if (player == 2) {
      OscMessage connect = new OscMessage(playerTwo2DPattern);
      connect.add(x);
      connect.add(y);
      oscP5.send(connect, myBroadcastLocation);
    }
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
    if (key == 'a' || key == 'A') {
      moveLeft = true;
    }
    if (key == 'e' || key == 'E') {
      moveOut = true;
    }
    if (key == 'q' || key == 'Q') {
      moveIn = true;
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
    if (key == 'e' || key == 'E') {
      moveOut = false;
    } 
    if (key == 'q' || key == 'Q') {
      moveIn = false;
    }
  }
}