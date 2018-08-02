class Menu implements ILevel {
  Player p;
  Spike s;
  Goal g;
  boolean win = false;
  ArrayList<Spike> spikes = new ArrayList<Spike>();
  ArrayList<Wall> walls = new ArrayList <Wall>();
  Menu() {
    win = false;
    p = new Player(50, 5, 50, 50);
    g = new Goal(1400, 2000, 400, 1000);
    spikes.add(new Spike(160, 100, 100, 80));
    walls.add(new Wall(50, 300, 200, 200));
    walls.add(new Wall(300, 300, 100, 100));
  }

  void draw() {
    background(p.health);
    pushStyle();
    textSize(200);
    textMode(CENTER);
    text("No Pain", width/2, height/2);
    textSize(50);
    text("WASD", p.location.x-50, p.location.y-50);
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
    game = new Level1();
    println("DONE");
  }
  void restart() {
    game = new Menu();
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