/*
  David Valencia
  Gaming 1
  Grower
*/


int _circle;
void setup()
{
 _circle = 10; 
 size(800,400);
}

void draw()
{
 background(#555252);
  ellipse(width/2, height/2 , _circle, _circle); 
 _circle = _circle+10;
 
 if( _circle == width )
 
 {
  _circle = 10 ;
  }

}