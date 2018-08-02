class NextLevelGoal extends GameEntity
{
  PImage arrow;

  NextLevelGoal(int _x, int _y, int _w, int _h)
  {
    super(_x, _y, _w, _h);
    arrow = loadImage("images/next.png");
  }

  void draw()
  {
    image(arrow, location.x, location.y, size.x, size.y);
  }
}