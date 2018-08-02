interface IGameLevel
{
  void update();
  void draw();
  void keyPressed();
  void keyReleased();
  void mousePressed();
  void mouseReleased();
  boolean isDone();
  int getNextLevel();
  void setTitle(String t);
  void addEntity(GameEntity e);
}