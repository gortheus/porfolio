class Level2 implements ILevel {
  Player p;
  Spike s;
  Goal g;
  boolean win = false;
  ArrayList<Spike> spikes = new ArrayList<Spike>();
  ArrayList<Wall> walls = new ArrayList <Wall>();

  Level2() {
    win = false;
    p = new Player(130, 5, 50, 50);
    g = new Goal(width/2+1000, 340, 200, 100);
    spikes.add(new Spike(width/2, 340,1000, 130));
    walls.add(new Wall(width/2-20, 650, 1130, 400));
    spikes.add(new Spike(width/2, 900, 1000, 130));
  }

  void draw() {
    background(p.health);
    textMode(CENTER);
    textSize(50);
    p.draw();
    g.draw();
    for (Spike s : spikes) { 
      s.draw();
    }
    for (Wall w : walls) {
      w.draw();
    }
    checkCollisions();
  }

  int checkState() {
    if (p.health <= 0 || p.health >= 201) { 
      return 2;
    }
    if (win == true) {
      return 1;
    } else {
      return 0;
    }
  }

  void nextLevel() {
    game = new Level3();
    println("DONE");
  }
  void restart() {
     game = new Level1();
  }
  void checkCollisions() {
    //Death
    for (Spike s : spikes) { 
      if (p.location.y+p.size.y/2 > s.location.y-s.size.y/2 && p.location.y-p.size.y/2 < s.location.y+s.size.y/2 ) { 
        if (p.location.x+p.size.x/2 > s.location.x-s.size.x/2 && p.location.x - p.size.x/2 < s.location.x+s.size.x/2) {
          p.health += 5;
        }
      }
    }
    if (p.location.y+p.size.y/2 > g.location.y-g.size.y/2 && p.location.y-p.size.y/2 < g.location.y+g.size.y/2 ) { 
      if (p.location.x+p.size.x/2 > g.location.x-g.size.x/2 && p.location.x - p.size.x/2 < g.location.x+g.size.x/2) {
        win = true;
      }
    } else {
      win = false;
    }
  p.jump(walls);
  }
  void keyPressed() {
    p.keyPressed();
  }
  void keyReleased() {
    p.keyReleased();
  }
  void mousePressed() {
  }
  void mouseReleased() {
  }
}