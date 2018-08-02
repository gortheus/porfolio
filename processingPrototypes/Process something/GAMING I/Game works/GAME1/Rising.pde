/*
 David Valencia
 Rising
 */
void rising()
{

  noStroke();
  background(backcolor);
  fill(#7FFC38);
  ellipse(positionx, positiony, 30, 30);

  //MOVEMENT

  if (moveUp==true)
  {
    positiony = constrain(positiony-5, 0, height);
  }
  if (moveDown==true)
  {
    positiony = constrain(positiony+5, 0, height);
  }
  if (moveRight==true)
  {
    positionx = constrain(positionx+5, 0, width);
  }
  if (moveLeft==true)
  {
    positionx = constrain(positionx-5, 0, width);
  }
  if ( positionx >= width/2)
  {
    backcolor=#0AFF0C;
  } else {
    backcolor=#2987FF;
  }
  
  //SCENE CHANGE
  
  if (positionx==width)
    {
      scenenumb='3';
    }
}