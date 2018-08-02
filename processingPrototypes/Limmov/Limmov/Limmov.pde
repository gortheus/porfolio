/*
David Valencia
 */
int level=0;
ILevel game;
void setup() {
  //size(800, 800, P3D);
  //hint(DISABLE_DEPTH_TEST); 
  fullScreen(P3D);
  game = new Menu();
}

void draw() {
  game.draw();
  if (game.checkState() == 2) {
    game.restart();
  }
  if (game.checkState() == 1) {
    println("STATE 1");
    game.nextLevel();
  }
}

void keyPressed() {
  game.keyPressed();
  if (key=='0' ) {
    game.nextLevel();
  }
  if (key=='9' ) {
    game.restart();
  }
}
void keyReleased() {
  game.keyReleased();
}

void mousePressed() {

  game.mousePressed();
}

void mouseReleased() {

  game.mouseReleased();
}