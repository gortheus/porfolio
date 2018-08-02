class SpikeBall extends GameEntity
{
  PImage spikeballImage;

  SpikeBall(int _x, int _y, int _w, int _h)
  {
    super(_x, _y, _w, _h);
    spikeballImage = loadImage("images/enemies/spikeball.png");
  }

  void draw()
  {
    move();
    image(spikeballImage, location.x, location.y, size.x, size.y);
  }
  void move()
  {
    location.y += 3;

    if (location.y > height)
      location.y = 0;
  }
}