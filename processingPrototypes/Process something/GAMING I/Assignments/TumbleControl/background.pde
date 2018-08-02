int imagex;
int imagey;
int imagewidth;
int imageheight;
void background()
{
  imageMode(CENTER);
  background(128);
  image(pix, imagex, imagey, imagewidth, imageheight);

  // movement right

  if (dist(imagex, imagey, width, height/2)>=imagewidth/2)
  {
    /* add it, don't need it(if statement) */    if (moveright==true)
    {
      imagex-=10;
    }
  } else if (dist(imagex, imagey, width, height/2)<imagewidth/2)
  {
    if (moveright==true)
    {
      imagex-=10;
    }
  }

  //movent left

  if (dist(imagex, imagey, 0, height/2)>=imagewidth/2)
  {
    /* add it, don't need it(if statement) */    if (moveleft==true)
    {
      imagex+=10;
    }
  } else if (dist(imagex, imagey, 0, height/2)<imagewidth/2) 
  {
    if (moveleft==true)
    {
      imagex+=10;
    }
  }
}