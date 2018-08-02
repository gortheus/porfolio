PImage desert;
void setup()
{
  size(800, 400);
  textAlign(CENTER, CENTER);
  textSize(25);
  noStroke();
  y1 = height/2;
  x1 = width/2;
  tumble = loadImage("tumbleweed.png");
  desert = loadImage("desert.jpg");
}

void mousePressed()
{
  if (mousePressed && mouseButton == LEFT)
  {
    //COLLISION
    if (dist(mouseX, mouseY, x1, y1)<=r1)
    {
      score += 1;
    }
    if (dist(mouseX, mouseY, x2, y2)<=r2)
    {
      score += 1;
    }
    if (dist(mouseX, mouseY, x3, y3)<=r3)
    {
      score += 1;
    }
  }
}
void draw()
{
  tumbleweeds();
}