/*
 David Valencia
 Gaming I
 Resolution
 */

//RGB

int _textr = 0;
int _textg = 0;
int _textb = 0;

//Size

boolean texton = false;
int _textsize = 55;

void setup()
{
  size(800, 600);
  textAlign(CENTER, CENTER);
}

void draw()
{ 
  fill(_textr, _textg, _textb); 
  background(#72DEC3);
  textSize(_textsize);
  text("THE \n END\n PRESS SPACE", width/2, height/2);

  //SIZE ANIMATION

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

  //COLOR ANIMATION
  if (_textsize >= 45)
  {
    _textr= int(random(0, 225));
  }
  if (_textsize <= 5)
  {
    _textg= int(random(0, 225));
  }
  if (_textsize >= 26 && _textsize <= 31)
  {
    _textb= int(random(0, 225));
  }
}