float _1x = 10;
float _1y = 10;
float _1speedx = 10;
float _1speedy = -20;
;
void drawCircle1()
{
  fill(#00FF01);
  ellipse(_1x, _1y, 90, 90); 
  fill(#000000);
  text("1", _1x, _1y);
  if (_1x <= 0 || _1x >= width)
  {
    _1speedx *= -1;
  }
  if (_1y <= 0 || _1y >= height)
  {
    _1speedy *= -1;
  }
  _1x += _1speedx;
  _1y += _1speedy;
}