class Camera3D {

  float eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ;
  boolean cameraLeft, cameraRight, cameraUp, cameraDown, cameraZoomIn, cameraZoomOut = false;
  Camera3D (float _eyeX, float _eyeY, float _eyeZ, float _centerX, float _centerY, float _centerZ, float _upX, float _upY, float _upZ) {
    eyeX = _eyeX;
    eyeY = _eyeY;
    eyeZ = _eyeZ;
    centerX = _centerX;
    centerY = _centerY;
    centerZ = _centerZ;
    upX = _upX;
    upY = _upY;
    upZ = _upZ;
  }

  Camera3D() {
    eyeX = width/2.0;
    eyeY = height/2.0;
    eyeZ = (height/2.0) / tan(PI*30.0 / 180.0);
    centerX = width/2.0 ;
    centerY = height/2.0;
    centerZ = 0;
    upX = 0;
    upY = 1;
    upZ = 0;
  }

  void update() {
    camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);
    if (cameraLeft==true)
    {
      eyeX-=10;
      centerX-=10;
    }
    if (cameraRight==true)
    {
      eyeX+=10;
      centerX+=10;
    }
    if (cameraUp==true)
    {
      eyeY-=10;
      centerY-=10;
    }
    if (cameraDown==true)
    {
      eyeY+=10;
      centerY+=10;
    }
    if (cameraZoomIn==true)
    {
      eyeZ-=10;
      eyeY-=10;
    }
    if (cameraZoomOut==true)
    {
      eyeZ+=10;
      eyeY+=10;
    }
  }

  void keyPressed() {
    if (key == 'a' || key == 'A')
    {
      cameraLeft = true;
    }
    if (key == 'd' || key == 'D')
    {
      cameraRight = true;
    }
    if (key == 'w' || key == 'W')
    {
      cameraUp = true;
    }
    if (key == 's' || key == 'S')
    {
      cameraDown = true;
    }
    if (key == 'z' || key == 'Z')
    {
      cameraZoomIn = true;
      println(cameraZoomIn);
    }
    if (key == 'x' || key == 'X')
    {
      cameraZoomOut = true;
      println(cameraZoomOut);
    }
  }

  void keyReleased() {
    if (key == 'a' || key == 'A')
    {
      cameraLeft = false;
    }
    if (key == 'd' || key == 'D')
    {
      cameraRight = false;
    }
    if (key == 'w' || key == 'W')
    {
      cameraUp = false;
    }
    if (key == 's' || key == 'S')
    {
      cameraDown = false;
    }
    if (key == 'z' || key == 'Z')
    {
      cameraZoomIn = false;
    }
    if (key == 'x' || key == 'X')
    {
      cameraZoomOut = false;
    }
  }
}