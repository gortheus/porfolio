class CollectLevel extends GameLevel
{
  CollectLevel(int type, int num, int successType, int successTarget, int failType, int failTarget)
  {
    super(type, num, successType, successTarget, failType, failTarget);
    //println(successTarget);
  }
  boolean died = false;
  int isDone() {
    if (entities.size() <= 1){
      return 1;
    }else if(died){
      return 0;
    }
    return 2;
  }

  //void isDone() {
  //  if (cheeses.size() <= 0){
  //    super.isWon = 1;
  //  }
  //} ERASE IF NOT USING

  int player;
  int wall;
  int enemy;

  void CheckEntity() {
    for (int i = entities.size()-1; i >= 0; i--) { 
      if (entities.get(i).type() == 1) { 
        player = i;
      }
      if (entities.get(i).type() == 3) { 
        wall = i;
      }
      if (entities.get(i).type() == 0) { 
        enemy = i;
      }
    }
  }

  void CheckCollisions() {
    if (entities.get(player).leftSide < entities.get(wall).rightSide && entities.get(player).rightSide > entities.get(wall).leftSide) {
      if (entities.get(player).upSide < entities.get(wall).downSide && entities.get(player).downSide > entities.get(wall).upSide) {
        //COLLISION = TRUE -> now we check on what side
        println("Wall Collision");
        if (entities.get(player).rightSide < entities.get(wall).rightSide) {
          // Collision from Left -> don't allow RightWards movementX
          println("coll left");
        } else if (entities.get(player).rightSide > entities.get(wall).rightSide) {
          // collision from Right -> don't allow Leftwards movementX
          println("coll right");
        }
        if (entities.get(player).upSide < entities.get(wall).upSide) {
          // Collision from up -> don't allow DownWards movementY
          println("coll up");
        } else if (entities.get(player).upSide > entities.get(wall).upSide) {
          // collision from Down -> don't allow Upwards movementY
          println("coll down");
        }
      }
    } else {
      println("No WALL collision");
    }
    //if (entities.get(player).leftSide < entities.get(enemy).rightSide && entities.get(player).rightSide > entities.get(enemy).leftSide) {
    //  if (entities.get(player).upSide < entities.get(enemy).downSide && entities.get(enemy).downSide > entities.get(enemy).upSide) {
    //    //Collision for enemy = true   -> for anything that kills, this can be used (if it's a rect)
    //    println("ENEMY");
    //  }
    //}
  }
  void draw() {
    super.draw();
    checkEnemyCollision();
    CheckEntity();
    CheckCollisions();
  }
  float lastPlayerX = -1; float lastPlayerY = -1; float lastEnemyX = -1; float lastEnemyY = -1;
  void checkEnemyCollision(){
    //println("PlayerPos: " + lastPlayerX + "," + lastPlayerY, " :: EnemyPos: " + lastEnemyX + "," + lastEnemyY);
    for (int i = entities.size()-1; i >= 0; i--){
      if( entities.get(i).type() == 1){
        lastPlayerX = entities.get(i).location.x;
        lastPlayerY = entities.get(i).location.y;
      }else if( entities.get(i).type() == 0){
        lastEnemyX = entities.get(i).location.x;
        lastEnemyY = entities.get(i).location.y;
      } 
      if(dist(lastPlayerX, lastPlayerY, lastEnemyX, lastEnemyY) < 75){
        println("Player Died");
        died = true;
      }
    }
  }
  void mousePressed()
  {
    //println(mouseX+ "," + mouseY);
    for (int i = entities.size()-1; i >= 0; i--)
    {
      if (dist(mouseX, mouseY, entities.get(i).location.x, entities.get(i).location.y) < entities.get(i).size.x && entities.get(i).type() == 0)
      {
        entities.remove(i);
      }
    }
  }
}