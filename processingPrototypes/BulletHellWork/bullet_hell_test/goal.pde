

class goal
{
PVector location;
PVector movement;




goal(float x, float y, float mx,float my)
{
  location= new PVector(x,y);
  movement=new PVector(mx,my);
  
}

void activate()
{
  

 location.x+=movement.x;
 location.y+=movement.y;
  
  fill(226,229,46);
  ellipse(location.x,location.y,150,150);
   if (location.x>=725 || location.x<=75)
    {
      movement.x*=-1;
    }
    if (location.y>=725 || location.y<=75)
    {
      movement.y*=-1;
    }
  if(dist(ch1.sendcoords().x, ch1.sendcoords().y, location.x, location.y)<=90)
  {
    
    if(victorypoints<50)
    {
      victorypoints+=.1;
      
    }
    victorypoints+=.03;
    
  }
}
  
}