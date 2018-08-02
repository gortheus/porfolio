class PlayerOther2D {  
  PShape playerOtherShape;
  int w, h;
  PlayerOther2D(int _x, int _y, int _w, int _h) {
    if (player==2) {
      playerOne2DX  = _x;
      playerOne2DY = _y;
      w = _w;
      h = _h;
      playerOtherShape = createShape(ELLIPSE, playerOne2DX, playerOne2DY, w, h);
    }
    if (player==1) {
      playerTwo2DX  = _x;
      playerTwo2DY = _y;
      w = _w;
      h = _h;
      playerOtherShape = createShape(ELLIPSE, playerTwo2DX, playerTwo2DY, w, h);
    }
  }

  void draw()
  {
    if (player==1) {
      translate(playerTwo2DX, playerTwo2DY);
      pushMatrix();
      pushStyle();
      playerOtherShape.setStroke(true);
      playerOtherShape.setTexture(playerTexture);
      shape(playerOtherShape, playerTwo2DX, playerTwo2DX);
      popStyle();
      popMatrix();
    }
    if (player==2) {
      translate(playerOne2DX, playerOne2DY);
      pushMatrix();
      pushStyle();
      playerOtherShape.setStroke(true);
      shape(playerOtherShape, playerOne2DX, playerOne2DY);
      popStyle();
      popMatrix();
    }
  }
}