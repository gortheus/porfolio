class MobileGame{
  IGameLevel currentLevel;
  GameSettings settings;
  String title;
  LevelFactory levelMaker; 
  PImage mainBG;

  MobileGame(String _title)
  {
    title = _title;
    settings = new GameSettings();
    levelMaker = new LevelFactory();
    mainBG = loadImage("images/mainBG.png");
  }

  void draw()
  {
    if (currentLevel == null){
      showMenu();
    }else{
      currentLevel.update();
      currentLevel.draw();
      if (currentLevel.isDone()){
        if(currentLevel.getNextLevel() == 0) currentLevel = null;
        else{
          println("level is done. loading next level: " + currentLevel.getNextLevel());
          currentLevel = levelMaker.getLevel(currentLevel.getNextLevel());
        }
      }
    }
  }

  void showMenu()
  {
    background(0);
    image(mainBG, width/2, height/2, width, height);
    pushStyle();
    textAlign(CENTER, CENTER);
    textSize(height*.25);    
    fill(255);
    text(title, width/2, height/2);
    textSize(height*.05);
    text("press to load level", width/2, height/2 + height*.25);
    popStyle();
  }

  void mousePressed(int mx, int my)
  {
    if (currentLevel == null)
    {
      currentLevel = levelMaker.getLevel(1);
    } else
      currentLevel.mousePressed();
  }
}