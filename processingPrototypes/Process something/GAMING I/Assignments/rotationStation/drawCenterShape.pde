float angleCenter = 20;
void drawCenterShape()
{
  fill(#0319FF);
  rectMode(CENTER);
  background(166);


  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angleCenter));
  rect(0, 0, 50, 50);
  popMatrix();
  angleCenter += 10;
}