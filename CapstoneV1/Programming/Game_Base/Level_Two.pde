class Level_Two extends Game{
  
  ArrayList<Obj> objs;
  
  Level_Two(){
    reset();
  }
  
  void play(){
    background(13, 33, 233);
    handle_fids();
  }
  void reset(){
    objs = new ArrayList<Obj>();
  }
  
}
