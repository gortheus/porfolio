/* 
 David Valencia
 Gaming I
 RotationStation
 */
//popMatrix()
//pushMatrix()

void setup()
{
  size(800, 600);
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(30);
}

void draw()
{
  drawCenterShape();
  drawLeftShape();
  drawRightShape();

  //Bouncer
  drawCircle1();
  drawCircle2();
  drawCircle3();
  drawCircle4();
}

void keyPressed()
{
  if (key == '1')
  {
    _1speedx *= -1;
    _1speedy *= -1;
  }
  if (key == '2')
  {
    _2speedx *= -1;
    _2speedy *= -1;
  }
  if (key == '3')
  {
    _3speedx *= -1;
    _3speedy *= -1;
  }
  if (key == '4')
  {
    _4speedx *= -1 ;
    _4speedy *= -1;
  }
}