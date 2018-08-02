//David Valencia
class Level1 {
  ArrayList<Pellet3D> pellets = new ArrayList<Pellet3D>();
  Goal3D goal3D;
  Player3D player3D;
  PlayerOther3D playerOther3D;
  Camera3D camera3D; 
  boolean pelletColl;
  //(W, H, D, X, Y, Z) used for spawning Boxes  - - - - - (R, X, Y, Z) used for spawning Spheres - - - - - (eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ) for spawning Camera \\
  //size 3000x3000
  Level1() {
    background = loadImage("back1.png");
    playerTexture = loadImage("expo12.png");
    goalTexture = loadImage("goal.png");
    pelletTexture = loadImage("pill.png");
    //camera = new PeasyCam(this, 0, 0, 0, 50);
    player3D = new Player3D(150, 3000, 3000, 200/2);
    playerOther3D= new PlayerOther3D(150, 0, 3000, 200/2);
    goal3D = new Goal3D(100, 100, 100, 3000/2, 3000/2, 100/2);
    camera3D = new Camera3D(player3D.x, player3D.y+400, (height/2) / tan(PI*30.0 / 180.0), player3D.x, player3D.y-500, 0, 0, 1, 0);
    //Pellets
    //for (int x = 200; x <= 3000-200; x+=100 ) {
    //  for (int y= 200; x <= 3000-200; y+=100 ) {
    //    pellets.add (new Pellet3D(50, 50, 50, x, y, 50));
    //  }
    //}
    pellets.add (new Pellet3D(50, 50, 50, 750, 100, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*2, 100, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*3, 100, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*4, 100, 50));


    pellets.add (new Pellet3D(50, 50, 50, 750, 750, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*2, 750, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*3, 750, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*4, 750, 50));

    pellets.add (new Pellet3D(50, 50, 50, 750, 750*2, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*2, 750*2, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*3, 750*2, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*4, 750*2, 50));

    pellets.add (new Pellet3D(50, 50, 50, 750, 750*3, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*2, 750*3, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*3, 750*3, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*4, 750*3, 50));

    pellets.add (new Pellet3D(50, 50, 50, 750, 750*4, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*2, 750*4, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*3, 750*4, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*4, 750*4, 50));

    pellets.add (new Pellet3D(50, 50, 50, 750, 3000-100, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*2, 3000-100, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*3, 3000-100, 50));
    pellets.add (new Pellet3D(50, 50, 50, 750*4, 3000-100, 50));
  }
  int state() {
    if (player3D.r <= playerOther3D.r) {
    }
    if (playerOther3D.r <= player3D.r) {
    }

    if (dist(player3D.x, player3D.y, player3D.z, goal3D.x, goal3D.y, goal3D.z) <= player3D.r+goal3D.w/2) {
      //change level
      OscMessage connect = new OscMessage("/level/2");
      connect.add(2);
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

  void pelletColl() {
    for (Pellet3D p : pellets) {
      if (dist(player3D.x, player3D.y, player3D.z, p.x, p.y, p.z) <= player3D.r+p.w/2) {
        p.pelletColl = true;
      } else {
        p.pelletColl = false;
      }
      if (p.pelletColl == true && p.canSize == true && p.show == true) {
        player3D.shrink = true;
        p.canSize = false;
        p.show = false;
      } else if (p.pelletColl == true && p.canSize == false && p.show == false) {
        player3D.shrink = false;
      }
      // println("coll" + p.pelletColl);
      //println(p.canSize);
    }
  }

  void checkCollisions() {
    state();
    pelletColl();
  }
  void draw() {
    text("player 1 score:"+playerOneScore, 0, 0);
    text("player 2 score:"+playerTwoScore, 700, 0);
    imageMode(CORNER);
    image(background, 0, 0);
    camera3D.update();
    player3D.draw();
    goal3D.draw();
    for (Pellet3D p : pellets) {
      if (p.show == true) {
        p.draw();
      }
    }
    // playerOther3D.draw();
    checkCollisions();
  }

  void keyPressed() {
    player3D.keyPressed();
    camera3D.keyPressed();
  }

  void keyReleased() {
    player3D.keyReleased();
    camera3D.keyReleased();
  }

  void mousePressed() {
  }
}