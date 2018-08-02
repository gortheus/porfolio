//Miguel Corona
class Level3 {
  //Goal3D goal3D;
  Player2D player2D;
  PlayerOther2D playerOther2D;
  Camera2D camera2D; 
   Goal2D goal2D;
  //Camera3D camera3D; 
  Level3() {
    background = loadImage("town.png");
    player2D= new Player2D(0, 0, 50, 50);
    playerOther2D= new PlayerOther2D(0, 0, 50, 50);
    // goal3D.draw();
    camera2D= new Camera2D(player2D.x, player2D.y, (height/2.0) / tan(PI*30.0 / 180.0), player2D.x, player2D.y, 0, 0, 1, 0);
    goal2D = new Goal2D(50, 50);
  }

 
  void draw()
  {
    imageMode(CENTER);
    image(background, 0, 0);
    text("player 1 score:"+playerOneScore, 0, 0);
    text("player 2 score:"+playerTwoScore, 700, 0);
    player2D.draw();
    camera2D.update();
    //playerOther2d.draw();
    //goal3D.draw();
    goal2D.draw();
    if (player2D.x <= 150) {
      if (player2D.x >= 100) {
        if (player2D.y  >= 100) {
          if (player2D.y <= 150) {
            if (player ==1) {
        playerOneScore+=1;
      }
      if (player ==2) {
        playerTwoScore+=1;
      }
            level=4;
            OscMessage connect = new OscMessage("/level/4");
      connect.add(4);
      oscP5.send(connect, myBroadcastLocation);
          }
        }
      }
    }
  }

  void keyPressed() {
    player2D.keyPressed();
    camera2D.keyPressed();
  }

  void keyReleased() {
    player2D.keyReleased();
    camera2D.keyReleased();
  }
}