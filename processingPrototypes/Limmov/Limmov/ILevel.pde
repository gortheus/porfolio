interface ILevel {
  void draw();
  void keyPressed();
  void keyReleased();
  void mousePressed();
  void mouseReleased();
  int checkState();
  void nextLevel();
  void restart();
}