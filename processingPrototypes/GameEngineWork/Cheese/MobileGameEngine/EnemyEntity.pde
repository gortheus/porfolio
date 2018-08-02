class EnemyEntity extends GameEntity {

  PImage alien;

  EnemyEntity(int _x, int _y, int _w, int _h, int _t) {
    super(_x, _y, _w, _h, _t); 
    alien = loadImage(art_path + "alien.png");
  }
  void draw() {
    pushStyle();
    imageMode(CENTER);
    image(alien, location.x, location.y, size.x, size.y);
    leftSide = location.x-halfW;
    rightSide = location.x+halfW;
    upSide = location.y-halfH;
    downSide = location.y+halfH;
    popStyle();
    if (dist(mouseX, mouseY, location.x, location.y) < 30) {
      //super.level.isDone(1);
    }
  }
}