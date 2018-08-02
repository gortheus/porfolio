class Camera {
  float eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ;
  boolean x;
  
  Camera (float _eyeX, float _eyeY, float _eyeZ, float _centerX, float _centerY, float _centerZ, float _upX, float _upY, float _upZ) {
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

  Camera() {
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
  
  void update(){
    camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);
  }
  
  void keyPressed(){
    
  }
  
  void keyReleased(){
    
  }
}