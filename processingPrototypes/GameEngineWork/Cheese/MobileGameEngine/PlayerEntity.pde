class PlayerEntity extends GameEntity {
  PImage nikto, space_mouse;
  float PetArc = 20;
  boolean moveLeft, moveRight, moveDown, moveUp = false;
  PVector niktoLocation;
  PVector niktoSize;
  boolean lost;
  int type;

  PlayerEntity(int _x, int _y, int _w, int _h, int _t) {
    super(_x, _y, _w, _h, _t); 
    space_mouse = loadImage(art_path + "spaceMouse.png");
    nikto = loadImage(art_path + "spaceCat.png");
    lost = false;
    niktoLocation = new PVector(location.x+20, location.y);
    niktoSize = new PVector(size.x-15, size.y-15);
    type = _t;
  }


  void draw() {
    pushStyle();
    imageMode(CENTER);
    image(nikto, niktoLocation.x, niktoLocation.y, niktoSize.x, niktoSize.y);
    image(space_mouse, location.x, location.y, size.x, size.y);
    leftSide = location.x-halfW;
    rightSide = location.x+halfW;
    upSide = location.y-halfH;
    downSide = location.y+halfH;
    popStyle();
  }


  void update() {
    if (location.y > 0) {
      if (moveUp == true && mousePressed) {
        location.y -= 5; 
        niktoLocation.y -= 5;
      }
    }
    if (location.y < height-30) {
      if (moveDown == true && mousePressed) {
        location.y += 5;
        niktoLocation.y +=5;
      }
    }
    if (location.x > 0) {
      if (moveLeft == true && mousePressed) {
        location.x -= 5;
        niktoLocation.x -= 5;
      }
    }
    if (location.x < width-30) {
      if (moveRight == true && mousePressed) {
        location.x += 5;
        niktoLocation.x += 5;
      }
    }
    mousePressed();
  }

  void mousePressed() {
    if (mouseX > width/2) {  
      moveRight = true;
      moveLeft = false;
    } else if (mouseX < width/2) {
      moveRight =false; 
      moveLeft = true;
    }
    if (mouseY > height/2) {
      moveDown = true;
      moveUp = false;
    } else if (mouseY < height/2) {
      moveDown = false;
      moveUp = true;
    }
  }
  int type() {
    return type;
  }
}