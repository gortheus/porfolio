float x1 = width/2;
float y1 = height/2;
float r1 = 45/2;
float rotate1 = 2;
float speedx1 = 2;
float speedy1 = 8;
float rot1 = 1;
void weed1()

{
  //IMAGE AND ROTATION
  imageMode(CENTER);
  pushMatrix();
  translate(x1, y1);
  rotate(radians(rotate1));
  ellipse(0, 0, 45, 45);
  //Weed1
  image(tumble, 0, 0, 50, 50);
  popMatrix();
  rotate1 += 10*rot1;

  //COLLISIONS
  x1 += speedx1;
  y1 += speedy1;
  if (x1 >= width || x1 <= 0)
  {
    speedx1 *= -1;
    rot1 *= -1;
  }

  if (y1 >=height || y1 <= 0)
  {
    speedy1 *= -1;
    rot1 *=-1;
  }
}