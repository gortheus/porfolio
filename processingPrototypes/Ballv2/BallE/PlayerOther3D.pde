class PlayerOther3D {  
  PShape playerOtherShape;
  int r;
  PlayerOther3D(int _r, int _x, int _y, int _z) {
    r = _r;
    if (player==1) {
      playerTwoX = _x;
      playerTwoY = _y;
      playerTwoZ = _z;
      playerOtherShape = createShape(SPHERE, r);
    }
    if (player==2) {
      playerOneX = _x;
      playerOneY = _y;
      playerOneZ = _z;
      playerOtherShape = createShape(SPHERE, r);
    }
  }

  void draw()
  {
    if (player==1) {
      translate(playerTwoX, playerTwoY, playerTwoZ);
      pushMatrix();
      pushStyle();
      playerOtherShape.setStroke(false);
      playerOtherShape.setTexture(playerTexture);
      shape(playerOtherShape, 0, 0);
      popStyle();
      popMatrix();
    }
    if (player==2) {
      translate(playerOneX, playerOneY, playerOneZ);
      pushMatrix();
      pushStyle();
      playerOtherShape.setStroke(false);
      playerOtherShape.setTexture(playerTexture);
      shape(playerOtherShape, 0, 0);
      popStyle();
      popMatrix();
    }
  }
}