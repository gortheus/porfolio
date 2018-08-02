PImage Trix;
class Gamer {
  int x;
  int y;
  int size;
  int constrainX1, constrainX2;
  int constrainY1, constrainY2;
  boolean moveUp, moveDown, moveRight, moveLeft = false;

  Gamer() {
    x = width/2;
    y = height/2;
    size = 50;
    constrainX1 = 0;
    constrainX2 = width;
    constrainY1 = 0;
    constrainY2 = height;
  }

  Gamer(int _x, int _y, int _trixsize, int _constrainX1, int _constrainX2, int _constrainY1, int _constrainY2) {
    x = _x;
    y = _y;
    size = _trixsize;
    constrainX1 = _constrainX1;
    constrainX2 = _constrainX2;
    constrainY1 = _constrainY1;
    constrainY2 = _constrainY2;
  }

  void spawn() {
    //SPAWN
    imageMode(CENTER);
    image(Trix, x, y, size, size);
    //collision
    rectMode(CENTER);
    fill(#FFFFFF, 0);
    rect(x, y, size-10, size);
    //MOVEMENT
    if (moveUp == true) {
      y = constrain(y-10, constrainY1, constrainY2);
    }
    if (moveDown == true) {
      y = constrain(y+10, constrainY1, constrainY2);
    }
    if (moveRight == true) {
      x = constrain(x+10, constrainX1, constrainX2);
    }
    if (moveLeft == true) {
      x = constrain(x-10, constrainX1, constrainX2);
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
  }
}