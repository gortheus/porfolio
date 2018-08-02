class Level1 implements ILevel {
  boolean death, win =  false;
  Player p;
  LinearShooter l;
  //ArrayList <Player> players;
  Level1() {
    p = new Player();
    //players = new ArrayList <Player>();
    //players.add(new Player());
    l = new LinearShooter(new PVector (20, 20), new PVector(20, 20));
  }
  //ArrayList getPlayers(){
  //  players.add(p);
  //  return players;
  //}
  void draw() {
    background(#DB2323);
    checkCollisions();
    //for (int i = players.size()-1; i >= 0; i--) {
    //  Player p = players.get(i);
    p.draw();
    // }
    //l.getPlayer(p);
    l.draw(); //test
  }
  void checkCollisions() {
    //Death
  }

  int checkState() {
    if (death == true) { 
      return 2;
    }
    if (win == true) {
      return 1;
    } 
    return 0;
  }

  void nextLevel() {
  }
  void restart() {
  }

  void keyPressed() {
    //for (int i = players.size()-1; i >= 0; i--) {
    //  Player p = players.get(i);
    p.keyPressed();
  }

void keyReleased() {
  //for (int i = players.size()-1; i >= 0; i--) {
  //  Player p = players.get(i);
  p.keyReleased();
}

void mousePressed() {
}
void mouseReleased() {
}

}
