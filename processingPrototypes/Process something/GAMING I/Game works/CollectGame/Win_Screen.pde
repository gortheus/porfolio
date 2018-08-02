/*
 David Valencia
 WIN SCREEN
 Gaming I
 */
void win()
{
  background(#030000);
  textAlign(CENTER);
  text("YOU WIIIIIN\npress W", textXmove, textYmove);
  textXmove=textXmove+textspeedX;
  if (textXmove>=width || textXmove<=0)
  {
    textspeedX *= -1;
  }
  textYmove=textYmove+textspeedY;
  if (textYmove>=height || textYmove<=0)
  {
    textspeedY *= -1;
  }
}