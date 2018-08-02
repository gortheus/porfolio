int x;
int y;
int rotate=10;
int spin=1;
int move=10;
void weed()
{
  for (y=height/2; y <= height; y+=80) {
    pushMatrix();
    translate(x, y);
    rotate(radians(rotate));
    image(tumble, 0, 0, 60, 60);
    popMatrix();
  }
  rotate += move*spin;
  if (moveright == false && moveleft ==false)
 {
  move=0; 
 } else {move=10;}
 
 //println(frameRate);
}