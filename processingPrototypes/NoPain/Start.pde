class Start implements ILevel {
  boolean win = false;
  PImage instructions;
  Start() {
    instructions = loadImage("Instructions.jpg");
    camera(width/2.0, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  }

  void draw() {
    imageMode(CENTER);
    image(instructions, width/2, height/2);
  }
  void keyPressed() {
  }
  void keyReleased() {
  }
  void mousePressed() {
    win = true;
  }
  void mouseReleased() {
    win = false;
  }
  int checkState() {
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
    game = new Start();
  }
}