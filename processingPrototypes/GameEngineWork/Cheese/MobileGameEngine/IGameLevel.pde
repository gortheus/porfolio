interface IGameLevel
{
  void update();
  void draw();
  void mousePressed();
  int isDone();
  int gameStatus();
  int getNextLevel();
  int getLostLevel();
  int getNextLevelType();
  int getLostLevelType();
  void setTitle(String t);
  void addEntity(GameEntity e);  
}