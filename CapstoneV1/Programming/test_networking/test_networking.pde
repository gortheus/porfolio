import netP5.*;
import oscP5.*;


OscP5 me;
String text;
int r, g, b;

void setup(){
  size(300, 300);
  me = new OscP5(this, 33000);
  me.plug(this, "test", "/obj_mov");
  text = "";
}

void draw(){
  background(0);
  pushStyle();
    fill(r, g, b);
    r = g = b = 213;
    textAlign(CENTER);
    textSize(30);
    text(text, width/2, height/2);
  popStyle();
}

void test(int x, int y){
  background(213);
  r = 13; g = 213; b = 33;
  text = "FidX: " + x + " FidY: " + y;
}
