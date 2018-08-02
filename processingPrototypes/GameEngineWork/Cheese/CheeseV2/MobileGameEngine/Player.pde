class Player extends GameEntity {
  PVector destination;
  PImage playerImage, playerImage2;
  Boolean wallCollide, rightCollide, leftCollide, topCollide, botCollide;
  PVector diff;

  Player()
  {
    super();
  }

  Player(int _x, int _y, int _w, int _h){
    super( _x, _y, _w, _h);
    destination = new PVector(-100, -100);
    playerImage = loadImage("images/spaceMouse.png");
    playerImage2 = loadImage("images/spaceCat.png");
    wallCollide = false; rightCollide = false; leftCollide = false; topCollide = false; botCollide = false;
    diff = PVector.sub(destination, location);
  }

  void draw()
  {
    updateLocation();
    pushStyle();
    fill(0, 255, 0);
    imageMode(CENTER);
    image(playerImage, location.x, location.y);
    image(playerImage2, location.x - 15, location.y + 15);
    popStyle();
  }

  void mousePressed()
  {
    destination.set(mouseX, mouseY);
  }
  void noCollide(){
    rightCollide = false; leftCollide = false;
    topCollide = false; botCollide = false;
  }
  void updateLocation(){
    diff = PVector.sub(destination, location);
    // has nowhere to go
    if (destination.x < 0 || destination.y < 0)
      return;

    //move closer to destination if not colliding
    if (!wallCollide || ((rightCollide && diff.x < -.5) || (leftCollide && diff.x > .5) || (topCollide && diff.y > .5) || (botCollide && diff.y < -.5))){
      diff.mult(.1);
      location.add(diff);
      wallCollide = false;
    }

    // close enough and now nowhere to go
    if (dist(location.x, location.y, destination.x, destination.y) < 3){
      destination.set(-1, -1);
    }

  }
}
