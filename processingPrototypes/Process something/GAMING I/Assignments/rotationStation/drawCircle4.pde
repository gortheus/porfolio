float _4x = width;
float _4y = height/2;
float _4speedx = 15;
float _4speedy = -10;

void drawCircle4()
{
  fill(#00FFF0);
  ellipse(_4x, _4y, 40, 40); 
  fill(#000000);
  text("4", _4x, _4y);
  if (_4x <= 0 || _4x >= width)
  {
    _4speedx *= -1;
  }
  if (_4y <= 0 || _4y >= height)
  {
    _4speedy *= -1;
  }
  _4x += _4speedx;
  _4y += _4speedy;
}