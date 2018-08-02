float _2x = 100;
float _2y = height/2;
float _2speedx = 30;
float _2speedy = -50;

void drawCircle2()
{
  fill(#FF00D1);
  ellipse(_2x, _2y, 80, 80); 
  fill(#000000);
  text("2", _2x, _2y);
  if (_2x <= 0 || _2x >= width)
  {
    _2speedx *= -1;
  }
  if (_2y <= 0 || _2y >= height )
  {
    _2speedy *= -1;
  }
  _2x += _2speedx;
  _2y += _2speedy;
}