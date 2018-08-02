float angleRight = -10;
void drawRightShape()
{
  fill(#FF0320); 
  rectMode(CENTER);
  
  pushMatrix();
  translate(width/2+100, height/2);
  rotate(radians(angleRight));
  rect(0, 0, 80, 60);
  popMatrix();
  angleRight += -20;
}