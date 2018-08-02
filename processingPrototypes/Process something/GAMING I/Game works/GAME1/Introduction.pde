/*
  David Valencia
 Gaming I
 Introduction
 */

void intro ()
{
  textSize(_textsize);
  fill(_textcolor);
  textAlign(CENTER, CENTER);

//rectangle


  //TEXT

  fill(_textcolor);
  text("IDK\nPress space", width/2, height/2);
  textSize(_textsize);
  if (texton == false)
  {
    _textsize = _textsize-1;
  }
  if (_textsize<=0)
  {
    texton = true;
  }
  if (texton == true)
  {
    _textsize = _textsize+1;
  }
  if (_textsize >= 50)
  {
    texton = false;
  }

  //SUN

  fill(#FCF629);
  ellipse(0, 0, 200, 200);
}