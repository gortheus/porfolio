class Flower extends GameEntity
{
  PImage flowerImage;

  Flower(int _x, int _y, int _w, int _h)
  {
    super(_x, _y, _w, _h);
    flowerImage = loadImage("collectables/flower.png");
  }

  void draw()
  {
    image(flowerImage, location.x, location.y, size.x, size.y);
  }
}