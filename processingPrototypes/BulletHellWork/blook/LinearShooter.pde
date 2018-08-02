class LinearShooter extends Shooter {
  ArrayList<LinearBullet> bullets;
  int startShootingTime; 
  int shootingTimePassed;
  int shootingMaxTime;
  Player p;
  //ArrayList <Player> players;

  LinearShooter(PVector _location, PVector _size) {
    super(_location, _size);
    bullets = new ArrayList<LinearBullet>();
    startShootingTime = millis();
    shootingMaxTime = 20;
    //players = new ArrayList<Player>();
  }

  void draw() {
    bulletTimer();
    super.draw();
    addBullet();
  }

  void shooting() {
    for (int i = bullets.size()-1; i >= 0; i--) {
      LinearBullet b = bullets.get(i);
      b.draw(); 
      // println(i);
      if (b.isDead(0, 800, 0, 800, 200)) {
        bullets.remove(i);
      }
    }
  }

  //void getPlayer(/*ArrayList*/Player _players) {
  //  //players.addAll(_players);
  //  p = _player;
  //}

  void addBullet ()
  {
    for (int i = bullets.size()-1; i >= 0; i--) {
      Bullet b = bullets.get(i);
      if (bulletTimer())
      {
        bullets.add(new LinearBullet(location, new PVector (25, 25), location.sub(p.location)));
      }
      if (b.isDead(0, 100, 0, 100, 50)) {
        bullets.remove(i);
      }
    }
  }

  boolean bulletTimer() {
    shootingTimePassed = (millis() - startShootingTime)/1000;
    if (shootingTimePassed >= shootingMaxTime) {
      startShootingTime = millis();
      return true;
    }
    return false;
  }
}
