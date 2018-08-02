float _3x = width;
float _3y = height/2;
float _3speedx = -20;
float _3speedy = -20;

void drawCircle3()
{
  fill(#FEFF00);
  ellipse(_3x, _3y, 100, 100); 
  fill(#000000);
  text("3", _3x, _3y);
  if (_3x <= 0 || _3x >= width)
  {
    _3speedx *= -1;
  }
  if (_3y <= 0 || _3y >= height )
  {
    _3speedy *= -1;
  }
  _3x += _3speedx;
  _3y += _3speedy;
}