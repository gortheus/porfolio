class Level1 implements ILevel {
  Player p;
  Spike s;
  Goal g;
  boolean win = false;
  ArrayList<Spike> spikes = new ArrayList<Spike>();
  ArrayList<Wall> walls = new ArrayList <Wall>();
  Level1() {
    p = new Player(50, 5, 50, 50);
    g = new Goal(50, 3000, 400, 70);
    spikes.add(new Spike(250, 200, 50, 70));
    spikes.add(new Spike(50, 1400, 600, 2000));
    walls.add(new Wall(50, 300, 100, 100));
    walls.add(new Wall(250, 325, 100, 100));
  }

  void draw() {
    background(p.health);
    pushStyle();
    textMode(CENTER);
    textSize(50);
    text("S", p.location.x-10, p.location.y-50);
    popStyle();
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
    game = new Level2();
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