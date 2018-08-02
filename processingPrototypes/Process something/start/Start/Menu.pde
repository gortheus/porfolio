class Menu implements ILevel {
  boolean death;

  Menu() {

    death = false;
  }

  void draw() {
    background(#E3ACAC);
    checkCollisions();
  }
  void checkCollisions() {
    //Death
  }

  int checkState() {
    if (death == true) { 
      return 2;
    } else if (death == false) { 
      return 0;
    }
    return 0;
  }

  void nextLevel() {
  }
  void restart() {
  }

  void keyPressed() {
  }
  void keyReleased() {
  }
  void mousePressed() {
  }
  void mouseReleased() {
  }
}
