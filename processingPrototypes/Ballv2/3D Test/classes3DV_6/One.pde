void one()
{
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);
 if(keyPressed)
  {
   if(key=='x')
   {
    x+=1;
   }
   if(key=='z')
   {
    x-=1;
   }
  }
  turnX+=.1;
  background(0);
  for (int n=0; n<1000; n+=200)
  {
    pushMatrix();
    translate(width/2,n);
    for (int i=0; i<2000; i+=400)
    {
      pushMatrix();
      translate(i, x);

      rotateX(turnX);

      player.create();
      player.grow();
      popMatrix();
    }

    for (int i=200; i<2000; i+=400)
    {
      pushMatrix();
      translate(i, -x);

      rotateX(-turnX);

      player.create();
      player.grow();
      popMatrix();
    }
    popMatrix();
  } 
}