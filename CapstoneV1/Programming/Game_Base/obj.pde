class Obj{
  
  PVector location;
  PVector size;
  PVector to;
  
  Obj(int x, int y, int sx, int sy){
    location = new PVector(x, y);
    size = new PVector(sx, sy);
    to = new PVector(-1, -1);
  }
  
  void draw(char shape){
    pushStyle();
      fill(213);
      noStroke();
      if (shape == 'R') rect(location.x, location.y, size.x, size.y);
      else ellipse(location.x, location.y, size.x, size.y);
    popStyle();
  }
  
  void set_location(int x, int y){
    to.set(x, y);
    
    if (dist(location.x, location.y, x, y) > 5){
      PVector diff = PVector.sub(to, location);
      diff.mult(.1);
      location.add(diff);
    }else{
      to.set(-1, -1);
      location.set(x, y);}
    
    OscMessage moving_obj = new OscMessage("/obj_mov");
    moving_obj.add(x);
    moving_obj.add(y);
    me.send(moving_obj, unreal);
    println("Sent: " + moving_obj);
  }
  
}
