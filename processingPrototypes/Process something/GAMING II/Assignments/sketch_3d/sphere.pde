class Sphere {
  int r, x, y, z;
  boolean moveUp, moveDown, moveLeft, moveRight, moveOut, moveIn = false;
  Sphere(int _r, int _x, int _y, int _z) {
    r = _r;
    x = _x;
    y = _y;
    z = _z;
  }

  void draw() {
    if (moveUp == true) y -= 10;
    if (moveDown == true) y += 10;
    if (moveRight == true) x +=10;
    if (moveLeft == true) x -= 10; 
    if (moveOut == true) z += 10;
    if (moveIn == true) z -= 10;
    pushMatrix();
    translate(x, y, z);
    noFill();
    stroke(255);
    sphere(r);
    popMatrix();
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