class Menu implements ILevel {
  boolean death, win =  false;

  Menu() {
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
    }
    if (win == true) {
      return 1;
    } 
    return 0;
  }

  void nextLevel() {
    game = new Level1();
  }
  void restart() {
  }

  void keyPressed() {
  }
  void keyReleased() {
  }
  void mousePressed() {
    win = true;
  }
  void mouseReleased() {
  }
}
