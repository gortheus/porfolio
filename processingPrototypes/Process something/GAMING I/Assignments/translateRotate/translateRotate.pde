float angle=60;
void setup()
{
  size(800, 600);
  rectMode(CENTER);
}

void draw()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  rect(0, 0, 100, 100);
  popMatrix();
  angle+=20;
}