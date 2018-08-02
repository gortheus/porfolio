abstract class GameLevel implements IGameLevel
{
  ArrayList<GameEntity> entities;
  String title;
  int levelType;
  int levelNumber;
  int successType, successTargetLevel;
  int failType, failureTargetLevel;
  String basePath;
  PImage background;
  int isWon = -1;

  GameLevel(int _type, int _num, int _successType, int _successTarget, int _failType, int _failTarget) {
    //println("Creating level " + _num );
    levelNumber = _num;
    levelType = _type;
    successType = _successType; 
    successTargetLevel = _successTarget;
    failType = _failType; 
    failureTargetLevel = _failTarget;
    entities = new ArrayList<GameEntity>();
    basePath = "levels/" + levelType + "/" + levelNumber + "/";
  }

  void update()
  {
    for (GameEntity g : entities)
    {
      g.update();
    }
  }

  void draw()
  {
    if (background != null)
      image(background, 0, 0, width, height);
    else
      background(53, 33, 13);
    for (GameEntity g : entities)
    {
      g.draw();
    }
  }

  void mousePressed()
  {
  }

  void addEntity(GameEntity entity)
  {
    entities.add(entity);
    //println("Number of entities: " + entities.size());
  }

  //void isDone(int num)
  //{
  //  if (num == 1){
  //    isWon = 1;
  //  }else if(num == 0){
  //    isWon = 0;
  //  }
  //}
  int isDone() {
    return 1;
  }
  int gameStatus() {
    return isWon;
  }

  int getNextLevel() {
    return successTargetLevel;
  }

  int getLostLevel() {
    return failureTargetLevel;
  }

  int getLostLeveType() {
    return failType;
  }

  int getNextLevelType() {
    return successType;
  }

  void setTitle(String t)
  {
    title = t;
  }
}