class Game
{
  IGameLevel currentLevel;
  LevelFactory levelMaker;
  String title;

  Game(String _title)
  {
    title = _title;
    levelMaker = new LevelFactory();
  }

  void draw()
  {
    currentLevel.update();
    currentLevel.draw();
    if (currentLevel.isDone())
    {
      //println("level is done. loading next level: " + currentLevel.getNextLevel());
    }
  }
  

  void keyPressed() {
    currentLevel.keyPressed();
  }

  void keyReleased() {
    currentLevel.keyReleased();
  }

  void mousePressed() {
    currentLevel.mousePressed();
  }

  void mouseReleased() {
    currentLevel.mouseReleased();
  }
}