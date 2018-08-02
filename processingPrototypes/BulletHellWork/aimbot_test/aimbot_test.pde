/*the general idea is to see the difference in bewtween the x position and the y position, and make a slope out of it.*/
lineshooter lshooter;
shooter shooter2;
seekingshooter sshooter1;
character ch1;
void setup()
{
  size(800,800);
  background(125);
  
  lshooter= new lineshooter(400,400,10,0,0,50);
  shooter2= new shooter(400,400,-1,-1);
  sshooter1= new seekingshooter(400,400,-2,-2);
  ch1= new character(400,400);
}
void draw()
{
  
  background(125);
ch1.move();
  lshooter.activate();
  fill(0,125,0);
  shooter2.run();
  
  sshooter1.activate();
  
  
  
}

void keyPressed()
{
  ch1.keypressed();
  
}

void keyReleased()
{
  ch1.keyreleased();
  
}