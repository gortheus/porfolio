class Player{
  
  PVector pos;
  PVector size;
  
  Player(){
    reset();
  }
  
  void draw(){
    pushStyle();
      fill(23, 23, 213);
      noStroke();
      ellipse(pos.x, pos.y, size.x, size.y);
    popStyle();
  }
  
  void update_location(float x, float y){
    pos.set(x, y);
  }
  
  void reset(){
    pos = new PVector(-100, -100);
    size = new PVector(20, 20);
  }
}
