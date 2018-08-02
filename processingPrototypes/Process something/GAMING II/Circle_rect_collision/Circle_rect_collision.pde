float cx = 0;      // circle position (set with mouse)
float cy = 0;


Circle circle;
Rectangle square;
void setup() {
  size(600,400);
  noStroke();
  circle = new Circle(0,0,30,30);
  square = new Rectangle(200,100,200,200);
}


void draw() {
  background(255);

  // update square to mouse coordinates
  circle.location.x = mouseX;
  circle.location.y = mouseY;

  // check for collision
  // if hit, change rectangle color
  boolean hit = circleRect(circle.location.x,circle.location.y,circle.r, square.location.x,square.location.y,square.size.x,square.size.y);
  if (hit) {
    fill(255,150,0);
  }
  else {
    fill(0,150,255);
  }
  square.draw();

  // draw the circle
  fill(0, 150);
 circle.draw();
}


// CIRCLE/RECTANGLE
boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

  // temporary variables to set edges for testing
  float testX = cx;
  float testY = cy;

  // which edge is closest?
  if (cx < rx)         testX = rx;      // test left edge
  else if (cx > rx+rw) testX = rx+rw;   // right edge
  if (cy < ry)         testY = ry;      // top edge
  else if (cy > ry+rh) testY = ry+rh;   // bottom edge

  // get distance from closest edges
  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= radius) {
    return true;
  }
  return false;
}
