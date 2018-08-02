class AvoidLevel extends GameLevel{

  ArrayList<Alien> aliens = new ArrayList<Alien>();
  ArrayList<Coin> coins = new ArrayList<Coin>();
  ArrayList<Wall> walls = new ArrayList<Wall>();
  ArrayList<Laser> lasers = new ArrayList<Laser>();

  Player player;
  boolean done, failed;
  Cheese cheese;
  Wall wall;

  AvoidLevel(int _id, int _passLevelTarget, int failLevelTarget)
  {
    super(_id, _passLevelTarget, failLevelTarget);
    player = new Player(75, 100, 45, 45);
  }

  boolean isDone() {
    if(failed) successTargetLevel = failureTargetLevel;
    return done;
  }

  void draw(){
    checkDeathCondition();
    checkPassCondition();
    checkWallCollision();
    super.draw();
    player.draw();
    for (Alien a : aliens)
      a.draw();
    for (Wall w : walls)
      w.draw();
    for (Laser l : lasers)
      l.draw();
    if (cheese != null) cheese.draw();

  }
  void mousePressed()
  {
    player.mousePressed();
  }

  void checkDeathCondition(){
    for (Alien a : aliens){
      if (dist(a.location.x, a.location.y, player.location.x, player.location.y) < (a.size.x)){
        failed = true;
        done = true;
      }
    }
    for (Laser l : lasers){
      if(player.location.x > l.location.x - l.size.x/2 &&  //left boundry
        player.location.x < l.location.x + l.size.x/2 &&   //right boundry
        player.location.y > l.location.y - l.size.y/2 &&   //top boundry
        player.location.y < l.location.y + l.size.y/2){    //bottom boundry
          failed = true;
          done = true;
        }
    }
  }
  float diffX, diffY;
  void checkWallCollision(){
    for (Wall w : walls){
      /*
        wallTop  = w.location.y                  playerTop = player.location.y - (player.size.y/2)
        wallBot = w.location.y + w.size.y        playerBot = player.location.y + (player.size.y/2)
        wallLeft = w.location.x                  playerLeft  = player.location.x - (player.size.x/2)
        wallRight = w.location.x + w.size.x      playerRight = player.location.x + (player.size.x/2)
      */
      //Are we colliding?
      if(dist(player.location.x, player.location.y, w.location.x + (w.size.x/2), w.location.y + (w.size.y/2)) < player.size.y){
        player.wallCollide = true;
        diffX = player.diff.x; diffY = player.diff.y;
      }

      player.noCollide();
      //what direction were we going?
      if(player.wallCollide && abs(diffX) > abs(diffY)){
        //then we're moving right or left more
        if(diffX > 0) player.rightCollide = true;
          else player.leftCollide = true;
      }else if(player.wallCollide){
        //then we're moving up or down more
        if(diffY > 0) player.botCollide = true;
          else player.topCollide = true;
      }
     //println("Collide? " + player.wallCollide + ": " + player.diff.x + ", " + player.diff.y + " Right?" + player.rightCollide + "--" + abs(player.location.x + (player.size.x/2) - w.location.x) + " Top?" + player.topCollide + "--" + abs(player.location.y - (player.size.y/2) - w.location.y + w.size.y));
    }
  }
  void checkCollectCoin(){
    for (Coin c : coins){
      if (dist(c.location.x, c.location.y, player.location.x, player.location.y) < (c.size.x)){
        coins.remove(c);
      }
    }
  }
  void checkPassCondition()
  {
    if (cheese == null)
      return;
    if (dist(player.location.x, player.location.y, cheese.location.x, cheese.location.y) < cheese.size.x)
    {
      failed = false;
      done = true;
    }
  }
  void addCheese(int ex, int ey, int ew, int eh){
    cheese = new Cheese(ex, ey, ew, eh);
  }
  void addAlien(int _x, int _y, int _w, int _h){
    aliens.add(new Alien(_x, _y, _w, _h));
  }
  void addCoin(int _x, int _y, int _w, int _h){
    coins.add(new Coin(_x, _y, _w, _h));
  }
  void addWall(int _x, int _y, int _w, int _h){
    walls.add(new Wall(_x, _y, _w, _h));
  }
  void addLaser(int _x, int _y, int _w, int _h){
    lasers.add(new Laser(_x, _y, _w, _h));
  }
}