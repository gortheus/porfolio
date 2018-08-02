float x2 = 100;
float y2 = 50;
float r2 = 45/2;
float rotate2 = 2;
float speedx2 = -3;
float speedy2 = 5;
float rot2 = 1;
void weed2()
{
  //IMAGE AND ROTATION
  imageMode(CENTER);
  pushMatrix();
  translate(x2, y2);
  rotate(radians(rotate2));
  ellipse(0, 0, 45, 45);
  //Weed2
  image(tumble, 0, 0, 50, 50);
  popMatrix();
  rotate2 += 10*rot2;

  //COLLISIONS
  x2 += speedx2;
  y2 += speedy2;
  if (x2 >= width || x2 <= 0)
  {
    speedx2 *= -1;
    rot2 *=-1;
  }

  if (y2 >=height || y2 <= 0)
  {
    speedy2 *= -1;
    rot2 *=-1;
  }
}