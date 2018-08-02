class Wall extends GameEntity{
  PImage wallImage;

  Wall(int _x, int _y, int _w, int _h)
  {
    super(_x, _y, _w, _h);
    wallImage = loadImage("images/wall.png");
  }

  void draw()
  {
    pushStyle();
    imageMode(CORNER);
    image(wallImage, location.x, location.y, size.x, size.y);
    popStyle();
  }
}