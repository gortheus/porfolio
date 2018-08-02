enemy enemy;
PImage enemyPic;
class enemy {
  int x, y, size, r;
  boolean moveUp, moveDown, moveRight, moveLeft = false;

  enemy(int _size)
  {
    size = _size;
    r = size/2;
    x = width-80;
    y = height/2;
  }

  void spawn()
  {
    fill(#FFFCFE);
    noStroke();
    ellipse(x, y, size, size);
    image(enemyPic, x, y, size, size);
    if (moveUp == true) {
      y = constrain(y-8, r, height-r);
    }
    if (moveDown == true) {
      y = constrain(y+8, r, height-size/2);
    }
    if (moveRight == true) {
      x = constrain(x+8, r, width-r);
    }
    if (moveLeft == true) {
      x = constrain(x-8, r, width-r);
    }
  }
}