class MobileGame
{
  IGameLevel currentLevel;
  GameSettings settings;
  String title;
  LevelFactory levelMaker; 
  PImage menu_back;

  MobileGame(String _title)
  {
    title = _title;
    settings = new GameSettings();
    levelMaker = new LevelFactory();
    menu_back = loadImage("levels/0/0/images/mainscreen.png");
  }

  void draw()
  {
    if (currentLevel == null)
    {
      showMenu();
    } else
    {
      currentLevel.update();
      currentLevel.draw();
      if (currentLevel.isDone() == 1) {
        currentLevel = levelMaker.getLevel(currentLevel.getNextLevelType(), currentLevel.getNextLevel());
      }else if (currentLevel.isDone() == 0){
        currentLevel = levelMaker.getLevel(currentLevel.getLostLevelType(), currentLevel.getLostLevel());
      }
      //if (currentLevel.gameStatus() == 1)
      //{
      //  println("level is done. loading next level: " + currentLevel.getNextLevel());
      //  currentLevel = levelMaker.getLevel(currentLevel.getNextLevelType(), currentLevel.getNextLevel());
      //}
      //else if(currentLevel.gameStatus() == 0){
      //  currentLevel = levelMaker.getLevel(currentLevel.getLostLevelType(), currentLevel.getLostLevel());
      //}
    }
  }

  void showMenu()
  {
    background(0);
    pushStyle();
    imageMode(CORNERS);
    image(menu_back, 0, 0, width, height);
    popStyle();
    pushStyle();
    textAlign(CENTER, CENTER);
    textSize(height*.25);    
    fill(255);
    text(title, width/2, height/2);
    textSize(height*.05);
    text("Click to continue...", width/2, height/2 + height*.25);
    popStyle();
  }

  void mousePressed(int mx, int my)
  {
    if (currentLevel == null)
    {
      currentLevel = levelMaker.getLevel(0, 0);
    } else
      currentLevel.mousePressed();
  }
}