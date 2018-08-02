class Level2 implements ILevel {
  Player p;
  Goal g;
  int startTime, timePassed, timeLimit;
  int background = 50;
  ArrayList<Spike> spikes = new ArrayList<Spike>();
  boolean death, win = false;

  Level2() {
    timeLimit = 13;
    background = 50;
    startTime = millis();
    death = false;
    win = false;
    p = new Player(40, height/2, 50, 50);
    g = new Goal(1200, height/2, 50, 50);
    spikes.add(new Spike (650-100, height/2-200, 250, height-50));
    spikes.add(new Spike (650-100, height+100, 250, 250));
    spikes.add(new Spike (1000-100, height/2+200, 250, height));
    spikes.add(new Spike (1000-100, 0, 250, 200));
  }

  void draw() {
    background(background);
    g.draw();
    for (Spike s : spikes) { 
      s.draw();
    }
    p.draw();
    checkCollisions();
    pushStyle();
    //textMode(CENTER);
    fill(#6508FF);
    stroke(200);
    textSize(40);
    text(str(timeLimit-timePassed), p.location.x-15, p.location.y+10);
    popStyle();
  }

  int checkState() {
    if (death == true) { 
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
    timePassed = (millis() - startTime)/1000;
    //Death
    if (timePassed >= timeLimit) {
      death = true;
    }
    if (p.health <= 0) {
      death = true;
    }
    //ENEMY
    for (Spike s : spikes) { 
      if (p.location.y+p.size.y/2 >= s.location.y-s.size.y/2 && p.location.y-p.size.y/2 <= s.location.y+s.size.y/2 ) { 
        if (p.location.x+p.size.x/2 >= s.location.x-s.size.x/2 && p.location.x - p.size.x/2 <= s.location.x+s.size.x/2) {
          p.health -= 3;
          //death = true;
        }
      }
    }
    //move (DONT STOP)
    if (p.movement == false) {
      p.health -= 1;
    }
    //WIN
    //GOAL
    if (p.location.y+p.size.y/2 > g.location.y-g.size.y/2 && p.location.y-p.size.y/2 < g.location.y+g.size.y/2 ) { 
      if (p.location.x+p.size.x/2 > g.location.x-g.size.x/2 && p.location.x - p.size.x/2 < g.location.x+g.size.x/2) {
        win = true;
      }
    } else {
      win = false;
    }
    //Size of Play
    //Background
    if (p.location.x < 0 || p.location.x > width || p.location.y < 0 || p.location.y > height) {
      background = -20;
      pushStyle();
      //textMode(CENTER);
      fill(#F20707);
      textSize(50);
      text("WARNING, OUT OF BOUNDS", p.location.x-400, p.location.y-50);
      popStyle();
    } else background = 50;

    if (p.location.x < 0) {
      p.moveLeft = false;
      p.health -= 1;
    }
    if (p.location.x > width) {
      p.moveRight = false;
      p.health -= 1;
    }
    if (p.location.y < 0) {
      p.moveUp = false;
      p.health -= 1;
    }
    if (p.location.y > height) {
      p.moveDown = false;
      p.health -= 1;
    }
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