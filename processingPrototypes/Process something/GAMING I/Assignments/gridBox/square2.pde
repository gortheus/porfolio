float rot2=20;
void square2 ()
{
  fill(#03FA00);
  for (int _2x=20; _2x<=width; _2x+=30)
  {  
    for (int _2y=43; _2y<=height; _2y+=45)
    {
      pushMatrix();
      translate(_2x, _2y);
      rotate(radians(rot2));
      rect(0, 0, 15, 15);
      popMatrix();
    }
  }
  rot2 -= 3;
}