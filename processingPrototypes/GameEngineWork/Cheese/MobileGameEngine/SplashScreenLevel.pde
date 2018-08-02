class SplashScreenLevel extends GameLevel
{
  PImage backgroundImage;
  boolean clicked = false;
  int level_number;

  SplashScreenLevel(int type, int num, int successType, int successTarget, int failType, int failTarget)
  {
    super(type, num, successType, successTarget, failType, failTarget); 
    backgroundImage = loadImage(basePath + "images/" + num + ".jpg");
    //println("Loaded background from: " + basePath + "images/" + num + ".jpg");
    level_number = num;
  }

  void draw()
  {
    pushStyle();
    background(193);
    imageMode(CORNER);
    try {
      image(backgroundImage, 0, 0, 800, 600);
    }
    catch (Exception e) {
      backgroundImage = loadImage(basePath + "images/" + level_number + ".png");
      image(backgroundImage, 0, 0, 800, 600);
    }
    textAlign(CENTER, CENTER);
    textSize(30);
    if (level_number == 0) {
      text("Click to begin the adventure...", width/2, height/2 + height*.25);
    }
    popStyle();
  }

  boolean isDone() {
    return clicked;
  }

  void mousePressed() {
    clicked = true;
  }
}