float angleLeft=-20;
void drawLeftShape()
{
  fill(#FAFF03);
  rectMode(CENTER);
  pushMatrix();
  translate(width/2-100, height/2);
  rotate(radians(angleLeft));
  rect(0, 0, 50, 70);
  popMatrix();
  angleLeft += -10;
}