class Bullet
{
  int r, g, b;
  PVector location;
  PVector size;
  int startTime;
  int timePassed;
  int maxTime;

  Bullet(PVector _location, PVector _size, int _r, int _g, int _b) {
    location = _location.copy();
    size.set(_size);
    r = _r;
    g = _g;
    b = _b;
    startTime = millis();
  }

  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    display();
    popMatrix();
    //Time Alive
    timePassed = (millis() - startTime)/1000;
  }

  void display() {
    pushStyle();
    fill(r, g, b);
    ellipse(0, 0, size.x, size.y);
    popStyle();
  }

  boolean isDead(float xMin, float xMax, float yMin, float yMax, int _maxTime) {
    maxTime = _maxTime;
    if (location.x <= xMin || location.x >= xMax)
    {
      return true;
    }
    if (location.y <= yMin || location.y >= yMax)
    {
      return true;
    } 
    if ( timePassed >= maxTime) {
      return true;
    }
    return false;
  }
}
