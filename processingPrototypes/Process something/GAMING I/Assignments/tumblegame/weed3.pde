float x3 = 30;
float y3 = 400;
float r3 = 45/2;
float rotate3 = 2;
float speedx3 = -2;
float speedy3 = -2;
float rot3 = 1;
void weed3 ()
{
  //IMAGE AND ROTATION
  imageMode(CENTER);
  pushMatrix();
  translate(x3, y3);
  rotate(radians(rotate3));
  ellipse(0, 0, 45, 45);
  //Weed3
  image(tumble, 0, 0, 50, 50);
  popMatrix();
  rotate3 += 10*rot3;

  //COLLISIONS
  x3 += speedx3;
  y3 += speedy3;
  if (x3 >= width || x3 <= 0)
  {
    speedx3 *= -1;
    rot3 *=-1;
  }

  if (y3 >=height || y3 <= 0)
  {
    speedy3 *= -1;
    rot3 *=-1;
  }
}