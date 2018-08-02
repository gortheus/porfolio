class Level_One extends Game{
  
  PImage bg;
  
  PVector house_pos;
  
  Level_One(){
    reset();
  }
  
  void play(){
    image(bg, 0, 0, width, height);
    background(93);
    draw_house();
    if (objs != null) for (Obj o : objs) o.draw('C');
    if (doors != null) for (Door d : doors) d.draw();
    handle_fids();
    player.draw();
  }
  
  void reset(){
    doors.clear();
    bg = loadImage("bg1.jpg");
    objs.add(new Obj(500, 300, 50, 50));
    objs.add(new Obj(300, 500, 50, 50));
    doors.add(new Door(700, 568));
    
    player.pos.set(0, 0);
    house_pos = new PVector(width/2 + width/8 - 100, 2 * height/3 + width/12 - 100);
  }
  
  void draw_house(){
    pushStyle();
      noStroke();
      rectMode(CORNER);
      fill(123);
      rect(house_pos.x, house_pos.y, 200, 200);
    popStyle();
  }
  
}
