//Czar Carson
class Level2
{
  Player3D player3D; // add instance for server data to be utilized :(
  PlayerOther3D playerOther3D;
  Camera3D camera3D;
  Goal3D goal3D;
  Wall3D wall3D;
  Level2() {
    background = loadImage("Ball-E_level-2_floor.png");
    if (player==1)
    {
      playerTexture = loadImage("Ball-E_player-1.png");
    }
    if (player==2)
    {
      playerTexture = loadImage("Ball-E_player-2.png");
    }
    goalTexture = loadImage("Ball-E_level-2-goal.png");
    player3D= new Player3D(100, width/2, height/2+400, 150);
    playerOther3D= new PlayerOther3D(100, width/2, height/2+400, 150);

    camera3D= new Camera3D(player3D.x, player3D.y+400, (height/2.0) / tan(PI*30.0 / 180.0), width/2, height/2-500, 0, 0, 1, 0);
    goal3D = new Goal3D(100, 100, 100, width/2, height/2, 150);
    wall3D = new Wall3D(200, 1, 200, 0, 0, 150);
  }

  int state() {
    if (dist(player3D.x, player3D.y, player3D.z, goal3D.x, goal3D.y, goal3D.z) <= player3D.r+goal3D.w/2) {
      OscMessage connect = new OscMessage("/level/3");
      connect.add(3);
      oscP5.send(connect, myBroadcastLocation);
      if (player ==1) {
        playerOneScore+=1;
      }
      if (player ==2) {
        playerTwoScore+=1;
      }
      return 1;
      //} else if (level == 3) {
      //  return 2;
    } else return 0 /*nothing happens*/;
  }

  void checkCollisions() {
    state();
    if (dist(player3D.x, player3D.y, player3D.z, wall3D.x, wall3D.y, wall3D.z) <= player3D.r)
    {
      // println("wall collision true");
      player3D.moveUp =false;
      camera3D.cameraUp = false;
    } else {
      //println("wall collision false");
    }
  }
  void draw() {
    text("player 1 score:"+playerOneScore, 0, 0,200);
    text("player 2 score:"+playerTwoScore, 700, 0,200);
    imageMode(CORNER);

    for (int x=-10000; x<10000; x+=1020)
    {
      
      image(background, x, -5100);
      image(background, x, -4080);
      image(background, x, -3060);
      image(background, x, -2040);
      image(background, x, -1020);
      image(background, x, 0);
      image(background, x, 1020);
      image(background, x, 2040);
      image(background, x, 3060);
    }
   

    camera3D.update();
    player3D.draw();
    goal3D.draw();
    checkCollisions();
    wall3D.draw();
    // playerOther3D.draw();
  }

  void keyPressed() {
    player3D.keyPressed();
    camera3D.keyPressed();
  }

  void keyReleased() {
    player3D.keyReleased();
    camera3D.keyReleased();
  }
}