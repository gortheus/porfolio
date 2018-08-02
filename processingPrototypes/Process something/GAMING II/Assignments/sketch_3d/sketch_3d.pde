import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;


//PeasyCam camera;

PImage background;
Sphere s;
Camera c;
void setup() {
  size(900, 700, P3D);
  //camera = new PeasyCam(this, 0, 0, 0, 50);
  background = loadImage("test.jpg");
  s = new Sphere(50, 0, 0, 0);
  c = new Camera();
}

void draw() {
  //background(background);
  c.update();
  imageMode(CORNER);
  image(background, 0, 0);
  s.draw();
}

void keyPressed() {
  s.keyPressed();
}
void keyReleased() {
  s.keyReleased();
}


void mousePressed() {
}