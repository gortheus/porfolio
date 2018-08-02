/*
  David Valencia
 Gaming I
 Test Sketch (Shape transitions)
 */


boolean _stroke = false;
int shapecolor = #05FF03;
float xmove;
float ymove;
char position = '1';

void setup()
{
  size(800, 650);  
  xmove = width-50;
  ymove = 40;
}




void draw()
{
  background(#636463);

  //Circle

  fill(shapecolor);
  if (_stroke == false)
  {
    noStroke();
  } else {
    stroke(0.5);
  }
  ellipse(xmove, ymove, 100, 100);

  //MOVEMENT

  if (xmove >= width-50 && ymove >= 40)
  {
    position = '1';
  }
  if (position == '1')
  {
    ymove = ymove+5;
  }
  if (xmove >= width-50 && ymove >= height-50)
  {
    position = '2';
  }
  if (position == '2')
  {
    xmove = xmove-5;
  }
  if (xmove <= 40 && ymove >= height-50)
  {
    xmove = width-50;
    ymove = 40;
  }

  //COLORS

  if (mouseY<=height/2)
  {
    shapecolor = #FF0000;
  } else { 
    shapecolor = #05FF03;
  }

  if (mouseY<=height/2)
  {
    _stroke = true;
  } else { 
    _stroke = false;
  }
}