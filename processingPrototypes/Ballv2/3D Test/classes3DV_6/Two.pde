void two()
{
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);

  ambientLight(255, 10, 10);
  background(25);
  stroke(255, 100, 100);
  fill(255);
  rect(0, 0, 800, 800);
  stroke(255);
line(moveX,moveY, 500, 100);
  pushMatrix();
  translate(moveX, moveY, r);
  rotateX(moveY/10);
  rotateY(moveX/10);
  follow.basic();
  follow.grow();
  popMatrix();
  pushMatrix();
  translate(0, 0, 100);
  box(100);
  translate(500,100,100);
  sphere(200);
  popMatrix();
  if (keyPressed==true)
  {
    if (key=='a')
    {
      moveX-=10; 
      eyeX-=10;
      centerX-=10;
    }
    if (key=='d')
    {
      moveX+=10; 
      eyeX+=10;
      centerX+=10;
    }
    if (key=='w')
    {
      moveY-=10;
      eyeY-=10;
      centerY-=10;
    }
    if (key=='s')
    {
      moveY+=10; 
      eyeY+=10;
      centerY+=10;
    }
    if (key=='q')
    {
      r+=1;
    }
    if (r>=0)
    {
      if (key=='e')
      {
        r-=1;
      }
    }
  }
}