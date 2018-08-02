class Level1 implements ILevel {
  boolean death, win =  false;
  Player p;

  Level1() {
    p = new Player();
  }

  void draw() {
    background(#DB2323);
    checkCollisions();
    p.draw();
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
  }
  void restart() {
  }

  void keyPressed() {
    p.keyPressed();
  }
  void keyReleased() {
  p.keyReleased();
  }
  
  void mousePressed() {
  }
  void mouseReleased() {
  }
}
