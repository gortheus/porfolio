class Player extends GameEntity {
  PVector destination;

  Player()
  {
    super();
  }

  Player(int _x, int _y, int _w, int _h)
  {
    super( _x, _y, _w, _h);
    destination = new PVector(-100, -100);
  }

  void draw()
  {
    updateLocation();
    pushStyle();
    fill(0, 255, 0);
    ellipse(location.x, location.y, size.x, size.y);
    popStyle();
  }

  void mousePressed()
  {
    destination.set(mouseX, mouseY);
  }

  void updateLocation()
  {
    // has nowhere to go
    if (destination.x < 0 || destination.y < 0)
      return;

    //move closer to destination
    PVector diff = PVector.sub(destination, location);
    diff.mult(.1);
    location.add(diff);
    
    // close enough and now nowhere to go
    if (dist(location.x, location.y, destination.x, destination.y) < 3)
    {
      destination.set(-1, -1);
    }


  }
}