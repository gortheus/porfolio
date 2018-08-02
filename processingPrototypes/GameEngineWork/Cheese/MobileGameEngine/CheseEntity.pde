class CheseEntity extends GameEntity {
  float size_animation;
  PImage cheese;
  CheseEntity(int _x, int _y, int _w, int _h, int _t) {
    super(_x, _y, _w, _h,_t); 
    cheese = loadImage(art_path + "cheese.png");
    size_animation = 1;
  }

  void draw() {
    size_animation += .3;
    pushStyle();
    imageMode(CENTER);
    image(cheese, location.x, location.y, (6.8 * sin(size_animation)) + size.x, (7 * sin(size_animation)) + size.y);
    popStyle();
  }
}