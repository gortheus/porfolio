class Coin extends GameEntity
{
  PImage coinImage;

  Coin(int _x, int _y, int _w, int _h)
  {
    super(_x, _y, _w, _h);
    coinImage = loadImage("images/coin.png");
  }

  void draw()
  {
    pushStyle();
    imageMode(CENTER);
    image(coinImage, location.x, location.y, size.x, size.y);
    popStyle();
  }
}