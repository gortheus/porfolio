/*
David Valencia 
Game Engine
*/
Game game;
void setup() {
  game = new Game("NoPain");
  //size(1800, 1800, P3D);
}

void draw() {
  game.draw();
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