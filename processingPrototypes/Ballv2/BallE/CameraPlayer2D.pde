class CameraPlayer2D
{
  PVector location, speed, size;

  void draw()
  {
    fill(0, 255, 0);
    ellipse(location.x, location.y, size.x, size.y);
    Speed();
  }

  //Player Movement
  void Speed()
  {
    if (keyPressed)
    {
      if (key=='W'||key=='w')
      {
        location.y-=speed.y;
      }

      if (key=='A'||key=='a')
      {
        location.x-=speed.x;
      }

      if (key=='S'||key=='s')
      {
        location.y+=speed.y;
        ;
      }

      if (key=='D'||key=='d')
      {
        location.x+=speed.x;
      }
    }
  }

  //Camera
  void Camera()
  {
    camera(location.x, location.y, (height/2.0) / tan(PI*30.0 / 180.0), location.x, location.y, 0, 0, 1, 0);
  }
}