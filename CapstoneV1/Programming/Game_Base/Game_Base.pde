
           /*  *\
          / *  * \
         /* *  * *\
* * * * * * *  * * * * * * * 
  * * Quixotic Studios * *
    * * * * *  * * * * *
      * * * *  * * * *
        * * *  * * *
          * *  * *
           \*  */

/* Mario Morales
   20th March 2018
   Basic Game Code + Recivision*/

import netP5.*;
import oscP5.*;
import TUIO.*;

NetAddress unreal;
OscP5 me;
TuioProcessing fid_client;

Game game;
Player player;
Level_One level1;
Level_Two level2;
float object_size;
PVector scaling, table_size;
float fid_size;

void setup(){
  size(1280, 720);
  //game setup
  game = new Game();
  player = new Player();
  level1 = new Level_One();
  level2 = new Level_Two();
  
  //osc setup
  me = new OscP5(this, 33001);
  //unreal = new NetAddress("10.17.81.7", 33000);
  unreal = new NetAddress("10.13.7.160", 33000);
  
  //fid setup
  fid_client = new TuioProcessing(this);
  object_size = 60;
  table_size = new PVector(1280, 720);
  scaling = new PVector(width/table_size.x, height/table_size.y);
  fid_size = object_size * scaling.y;
  
  me.plug(this, "update_state", "/game_state");
  me.plug(this, "update_player", "/player_pos");
  me.plug(this, "player_x", "/player_x");
  me.plug(this, "player_y", "/player_y");
  me.plug(this, "open_door", "/open_door");
  me.plug(this, "close_door", "/close_door");
}

void draw(){
  game.run();
}

void handle_fids(){
  ArrayList<TuioObject> fid_list = fid_client.getTuioObjectList();
  for (TuioObject fid : fid_list){
    pushStyle();
      noStroke();
      fill(233, 73, 73, 73);
      rectMode(CENTER);
      pushMatrix();
        translate(fid.getScreenX(width), fid.getScreenY(height));
        rotate(fid.getAngle());
        rect(0, 0, fid_size, fid_size);
        if (game.gamelevel != null) check_movables(fid, game.gamelevel.objs);
        if (game.gamelevel != null) check_spin(fid, game.gamelevel.doors);
      popMatrix();
    popStyle();
  }
}

void update_state(int state){
  game.set_state(state);
  println("Changed to state: " + state);
}

void update_player(float x, float y){
  player.update_location(x, y);
}
void player_x(float x){
  //println("PlayerX at:" + x);
  player.pos.x = abs(.0627 * (x + 90000));
}
void player_y(float y){
  //println("PlayerY at: " + y);
  player.pos.y = abs(.054 * (y + 90000));
}

void open_door(int door){
  println("Door" + door + " Opened");
  if(game.doors != null){
    level1.doors.get(door).door_open = true;
    level1.doors.get(door).door_closed = false;
  }
}
void close_door(int door){
  println("Door" + door + " Closed");
  if(game.doors != null){
    level1.doors.get(door).door_open = false;
    level1.doors.get(door).door_closed = true;
  }
}

void check_movables(TuioObject fid, ArrayList<Obj> objs){
  if (objs != null){
    for (Obj o : objs){    
      if (dist(fid.getScreenX(width), fid.getScreenY(height), o.location.x, o.location.y) < 100) 
        o.set_location(fid.getScreenX(width), fid.getScreenY(height));
    }
  }
}

int door_fid;
void check_spin(TuioObject fid, ArrayList<Door> ds){
  if (ds != null){
    for (Door d : ds){
      if (dist(fid.getScreenX(width), fid.getScreenY(height), d.location.x, d.location.y) < 100){
        d.check_rotate(fid.getAngleDegrees());
        door_fid = fid.getSymbolID();
      }else{
        if(!d.door_open && d.door_closed){
          OscMessage door_msg = new OscMessage("/door");
          door_msg.add(11);
          me.send(door_msg, unreal);
          println("Sent \"let go of door\": " + door_msg);
          d.door_closed = false;
          d.door_open = true;
        }
        d.first = true;
      }
    }
  }
}

//void oscEvent(OscMessage theOscMessage) {
//  /* print the address pattern and the typetag of the received OscMessage */
//  print("### received an osc message.");
//  print(" addrpattern: "+theOscMessage.addrPattern());
//  println(" typetag: "+theOscMessage.typetag());
//}
// --------------------------------------------------------------
// these callback methods are called whenever a TUIO event occurs
// there are three callbacks for add/set/del events for each object/cursor/blob type
// the final refresh callback marks the end of each TUIO frame

// called when an object is added to the scene
void addTuioObject(TuioObject fid) {}

// called when an object is moved
void updateTuioObject (TuioObject fid) {}

// called when an object is removed from the scene
void removeTuioObject(TuioObject fid) {
  if (fid.getSymbolID() == door_fid){
      OscMessage door_closed = new OscMessage("/door");
      door_closed.add(false);
      me.send(door_closed, unreal);
      println("Sent: " + door_closed);
      door_fid = -1;
      
  }
}

// --------------------------------------------------------------
// called when a cursor is added to the scene
void addTuioCursor(TuioCursor tcur) {}

// called when a cursor is moved
void updateTuioCursor (TuioCursor tcur) {}

// called when a cursor is removed from the scene
void removeTuioCursor(TuioCursor tcur) {}

// --------------------------------------------------------------
// called when a blob is added to the scene
void addTuioBlob(TuioBlob tblb) {}

// called when a blob is moved
void updateTuioBlob (TuioBlob tblb) {}

// called when a blob is removed from the scene
void removeTuioBlob(TuioBlob tblb) {}

// --------------------------------------------------------------
// called at the end of each TUIO frame
void refresh(TuioTime frameTime) {}
