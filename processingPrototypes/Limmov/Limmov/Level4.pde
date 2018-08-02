class Level4 implements ILevel {
  Player p;
  Goal g;
  int startTime, timePassed, timeLimit;
  int background = 50;
  ArrayList<Spike> spikes = new ArrayList<Spike>();
  boolean death, win = false;

  Level4() {
    timeLimit = 13;
    background = 50;
    startTime = millis();
    death = false;
    win = false;
    p = new Player(10, height/2, 50, 50);
    g = new Goal(1210, height/2, 50, 50);
    spikes.add(new Spike (210, 184, 310, 330));
    spikes.add(new Spike (10, height/2-100, 340, 140));
    spikes.add(new Spike (10, height/2+200, 340, 240));
    spikes.add(new Spike (380, height/2-10, 250, 600));
    //spikes.add(new Spike (380, height/2+270, 250, 50));
    spikes.add(new Spike (550, height/2+200-10, 250, 200));
    spikes.add(new Spike (750, height/2-100, 300, 800));
    spikes.add(new Spike (550, 410, 200, 100));
    //separator
    spikes.add(new Spike (410, 734, 85, 60));
    spikes.add(new Spike (630, 734, 85, 60));
    spikes.add(new Spike (1010, height/2, 80, height+90));
  }

  void draw() {
    println(p.location.x,p.location.y);
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
    textSize(100);
    stroke(200);
    text("Congrats(?)", 1210, height/2-50);
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
    game = new Menu();
    println("DONE");
  }
  void restart() {
    game = new Level3();
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