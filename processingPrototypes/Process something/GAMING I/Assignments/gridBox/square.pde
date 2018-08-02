float rot1=20;

void square()
{
  background(#050505);
  fill(#FF0000);
  for (int _1x=20; _1x<=width; _1x+=30)
  {  
    for (int _1y=20; _1y<=height; _1y+=45)
    {
      pushMatrix();
      translate(_1x, _1y);
      rotate(radians(rot1));
      rect(0, 0, 15, 15);
      popMatrix();
    }
  }
  rot1 += 3;
}