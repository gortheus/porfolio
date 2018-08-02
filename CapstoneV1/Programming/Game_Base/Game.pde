class Game{
  
  Game gamelevel;
  int game_state;
  
  ArrayList<Obj> objs;
  ArrayList<Door> doors;
  
  Game(){
    objs = new ArrayList<Obj>();
    doors = new ArrayList<Door>();
    reset();
  }
  
  void run(){
    if(game_state == 0){
      load_screen();
      gamelevel = null;
    }else if(game_state == 1){
      gamelevel = level1;
      level1.play();
    }else if(game_state == 2){
      gamelevel = level2;
      level2.play();
    }else game_state = 0;
  }
  
  void load_screen(){
    background(mouseY/10, mouseX/15, mouseY/10);
    pushStyle();
      textAlign(CENTER);
      textSize(33);
      text("Waiting for first player to start...", width/2, height/2);
    popStyle();
    if (mousePressed) game_state = 1;
    OscMessage waiting = new OscMessage("/waiting");
    waiting.add(true);
    me.send(waiting, unreal);
    println("Sent: " + waiting);
  }
  
  void set_state(int state){
    if (game_state != state) game_state = state;
  }
  
  void test(){
    background(0);
    handle_fids();
  }
  
  void reset(){
    game_state = 0;
  }
}
