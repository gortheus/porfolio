/*
 David Valencia
 Rising
 */

void level_1()
{
  background(#3B98E8);

  //CHARACTER
  fill(#9721FF);
  ellipse(charx, chary, charsize, charsize);
  if ( right == true)
  {
    charx=constrain(charx+4, 0, width);
  }
  if ( left == true)
  {
    charx=constrain(charx-4, 0, width);
  }
  if ( up == true)
  {
    chary=constrain(chary-4, 0, height);
  }
  if ( down == true)
  {
    chary=constrain(chary+4, 0, height);
  }

  //Collisions

  if ( dist(charx, chary, _1x, _1y)<= charsize/2+_1size/2 ||  dist(charx, chary, _2x, _2y)<= charsize/2+_2size/2)
  {
    stage="fail";
  }
  if(dist(charx, chary, _4x, _4y)<= charsize/2+_2size/2)
  {
   stage="win"; 
  }

  //ENEMIES
  //1
  fill(#FF0000);
  ellipse(_1x, _1y, _1size, _1size);
  _1x= constrain(_1x+_1speedx, 0, width);
  _1y= constrain(_1y+_1speedy, 0, height);
  if (_1y >= height || _1y <= 0)
  {
    _1speedy*= -1;
  }
  if (_1x >=width || _1x <= 0)
  {
    _1speedx*= -1;
  }

  //2

  ellipse(_2x, _2y, _2size, _2size);
  _2x = constrain(_2x+_2speedx, 0, width);
  _2y = constrain(_2arc*pow(_2x, 2), 0, height);
  /*if (_2y >= height || _2y <= 0)
   {
   _2arc*= -1;
   }
   */
  if (_2x >=width || _2x <= 0)
  {
    _2speedx *=-1;
  }


  //3

  ellipse(_3x, _3y, _3size, _3size);
  _3x= constrain(_3x+_1speedx, 0, width);
  _3y= constrain(_3y+_1speedy, 0, height);
  if (_3y >= height || _3y <= 0)
  {
    _3speedy*= -1;
  }
  if (_3x >=width || _3x <= 0)
  {
    _3speedx*= -1;
  }

  //GOAL
  fill(#05FFE0);
  ellipse(_4x, _4y, _4size, _4size);
  _4x= constrain(_3x-_4speedx+100, 0, width);
  _4y= constrain(_3y-_4speedy+100, 0, height);
  if (_4y >= height || _4y <= 0)
  {
    _4speedy*= -1;
  }
  if (_4x >=width || _4x <= 0)
  {
    _4speedx*= -1;
  }
}