class Level3 implements ILevel {
  Player p;
  Spike s;
  Goal g;
  boolean win = false;
  ArrayList<Spike> spikes = new ArrayList<Spike>();
  ArrayList<Wall> walls = new ArrayList <Wall>();

  Level3() {
    win = false;
    p = new Player(40, 5, 50, 50);
    g = new Goal(1220+1000, 400-150, 200, 200);
    spikes.add(new Spike(220, 400, 100, 100));
    walls.add(new Wall(20, 400, 100, 100));
    walls.add(new Wall(220, 600, 100, 100));
    walls.add(new Wall(400, 400, 100, 100));
    //spikes.add(new Spike(220+100, 400, 80, 80));
    //walls.add(new Wall(20+100, 400, 100, 100));
    //walls.add(new Wall(220+100, 600, 100, 100));
    //walls.add(new Wall(400+100, 400, 100, 100));
    spikes.add(new Spike(220+500, 400, 100, 100));
    walls.add(new Wall(20+500, 400, 100, 100));
    walls.add(new Wall(220+500, 600, 100, 100));
    walls.add(new Wall(400+500, 400, 100, 100));
    ////
    spikes.add(new Spike(220+1000, 400, 100, 100));
    walls.add(new Wall(20+1000, 400, 100, 100));
    walls.add(new Wall(220+1000, 600, 100, 100));
    walls.add(new Wall(400+1000, 400, 100, 100));
    ////
    spikes.add(new Spike(1220+500, 400-100, 100, 100));
    walls.add(new Wall(1220+500, 600-100, 100, 100));
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
    game = new Start();
    println("DONE");
  }
  void restart() {
    game = new Level2();
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