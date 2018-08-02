
class Player3D {
  PShape playerShape;
  int r, x, y, z;
  float size;
  float rX, rY, rZ = 10; //Rotation
  boolean moveUp, moveDown, moveLeft, moveRight, moveOut, moveIn = false;
  boolean shrink, grow = false;
  boolean canSize = true;
  int n = 10;
  Player3D(int _r, int _x, int _y, int _z) {
    r = _r;
    x = _x;
    y = _y;
    z = _z;
    playerShape = createShape(SPHERE, r);
  }

  void size() {
    //Size
    if (grow == true) {
      r += 5;
      playerShape = createShape(SPHERE, r);
    }
    if (shrink == true) {
      r -= 5;
      playerShape = createShape(SPHERE, r);
    }
  }

  void update() {
    //Movement
    if (moveUp == true) { 
      y -= n; 
      rX += 0.005;
    }
    if (moveDown == true) { 
      y += n; 
      rX -= 0.005;
    }
    if (moveRight == true) { 
      x += n; 
      rZ += 0.005;
    }
    if (moveLeft == true) { 
      x -= n; 
      rZ -= 0.005;
    }; 
    //if (moveOut == true) { 
    //  z += n; 
    //  rX -= 0.005;
    //}
    //if (moveIn == true) { 
    //  z -= n; 
    //  rX += 0.005;
    //}
    size();
  }

  void draw() {
    update();
    pushMatrix();
    translate(x, y, z);
    rotateX(degrees(rX));
    rotateY(degrees(rY));
    rotateZ(degrees(rZ));
    pushStyle();
    playerShape.setStroke(false);
    playerShape.setTexture(playerTexture);
    shape(playerShape, 0, 0);
    popStyle();
    popMatrix();
    if (player == 1) {
      OscMessage connect = new OscMessage(playerOnePattern);
      connect.add(x);
      connect.add(y);
      connect.add(z);
      oscP5.send(connect, myBroadcastLocation);
    }
    if (player == 2) {
      OscMessage connect = new OscMessage(playerTwoPattern);
      connect.add(x);
      connect.add(y);
      connect.add(z);
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