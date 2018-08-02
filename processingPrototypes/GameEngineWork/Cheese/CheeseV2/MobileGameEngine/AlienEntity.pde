class Alien extends GameEntity{
  PImage alienImage;

  Alien(int _x, int _y, int _w, int _h)
  {
    super(_x, _y, _w, _h);
    alienImage = loadImage("images/alien.png");
  }

  void draw()
  {
    move();
    image(alienImage, location.x, location.y, size.x, size.y);
  }
  void move()
  {
    location.y += 3;

    if (location.y > height)
      location.y = 0;
  }
}
