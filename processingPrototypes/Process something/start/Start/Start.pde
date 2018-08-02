/*
David Valencia
 */

ILevel game;
void setup() {
  //size(800, 800, P3D);
  fullScreen(P3D);
  game = new Menu();
}

void draw() {
  game.draw();
  if (game.checkState() == 2) {
    game.restart();
  }
  if (game.checkState() == 1) {
    game.nextLevel();
  }
}

void keyPressed() {
  game.keyPressed();
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
