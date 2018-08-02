player player;
PImage playerPic;
class player {
  int x, y, size, r;
  boolean moveUp, moveDown, moveRight, moveLeft = false;
  player(int _size)
  {
    size = _size;
    r = size/2;
    x = r;
    y = height/2;
  }

  void spawn()
  {
    fill(#FFFCFE);
    noStroke();
    ellipse(x, y, size, size);
    image ( playerPic, x, y, size, size);
    if (moveUp == true) {
      y = constrain(y-5, r, height-r);
    }
    if (moveDown == true) {
      y = constrain(y+5, r, height-size/2);
    }
    if (moveRight == true) {
      x = constrain(x+5, r, width-r);
    }
    if (moveLeft == true) {
      x = constrain(x-5, r, width-r);
    }
  }

  void keyPressed()
  {
    if (key=='w') {
      moveUp = true;
    }
    if (key=='s') {
      moveDown = true;
    }
    if (key=='d') {
      moveRight = true;
    }    
    if (key=='a') {
      moveLeft = true;
    }
  }

  void keyReleased() {
    if (key=='w') {
      moveUp = false;
    }
    if (key=='s') {
      moveDown = false;
    }
    if (key=='d') {
      moveRight = false;
    }    
    if (key=='a') {
      moveLeft = false;
    }
  }
}