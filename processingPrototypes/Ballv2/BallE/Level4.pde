//Kyron Patterson
class Level4
{
  Goal2D goal2D;
  Player2D player2D;
  PlayerOther2D playerOther2D;
  Camera2D camera2D;
  int c;
  Level4()
  {
    goalTexture2 = loadImage("GoalBlock.png");
    grid = loadImage("grid.png");
    player2D= new Player2D(0, 0, 50, 50);
    playerOther2D= new PlayerOther2D(0, 0, 50, 50);
    c = 0;
    camera2D= new Camera2D(player2D.x, player2D.y, (height/2.0) / tan(PI*30.0 / 180.0), player2D.x, player2D.y, 0, 0, 1, 0);
    goal2D = new Goal2D(50, 50);
  }
  void draw() {
    background(c);
    text("player 1 score:"+playerOneScore, 0, 0);
    text("player 2 score:"+playerTwoScore, 700, 0);

    if (c >= 255) {
      c = 0;
    } else {
      c = c+1;
    }
    imageMode(CENTER);
    image(grid, 0, 0);
    player2D.draw();
    camera2D.update();

    goal2D.draw();

    // playerOther2D.draw();

    //q.draw();

    //GOAL Collision
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
            level=0;
          }
        }
      }
    }

    //Player postion X
    println(player2D.x);
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