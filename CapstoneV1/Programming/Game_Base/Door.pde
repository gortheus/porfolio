class Door{
  
  PVector location;
  boolean first;
  float init_angle;
  
  boolean door_open, door_closed;
  
  Door(int x, int y){
    location = new PVector(x, y);
    first = true;
  }
  
  void draw(){
    pushStyle();
      fill(139, 69, 19);
      rectMode(CORNER);
      noStroke();
      if (door_open) door_open();
      else door_close();
    popStyle();
  }
  
  void door_open(){
    rect(location.x - 30, location.y, 30, 7);
  }
  
  void door_close(){
    rect(location.x, location.y, 7, 30);
  }
  
  void check_rotate(float current_angle){
    if (first){
      init_angle = current_angle;
      first = false;
      print("Got init");
    }
    //if (init_angle >= 80 && current_angle - init_angle < -70) println("DOOR OPEN");
    //else if(init_angle < 80 && current_angle > 270 && init_angle + (360 - current_angle) > 70) println("DOOR OPEN the cool way");
    if ((init_angle >= 80 && current_angle - init_angle < -70) || (init_angle < 80 && current_angle > 270 && init_angle + (360 - current_angle) > 70)){
      // Close the door
      if (!door_closed && door_open){
        OscMessage door_msg = new OscMessage("/door");
        door_msg.add(10);
        me.send(door_msg, unreal);
        println("Sent: " + door_msg);
        door_closed = true;
        door_open = false;
      }
    }else{
      if(!door_open && door_closed){
        OscMessage door_msg = new OscMessage("/door");
        door_msg.add(11);
        me.send(door_msg, unreal);
        println("Sent \"let go of door\": " + door_msg);
        door_closed = false;
        door_open = true;
      }
    }
    println(current_angle);
    //pushStyle();
    
    //popStyle();
  }
  
}
