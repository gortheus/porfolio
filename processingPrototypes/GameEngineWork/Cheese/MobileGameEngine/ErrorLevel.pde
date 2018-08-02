class ErrorLevel extends GameLevel
{

  ErrorLevel()
  {
    super(-1, 0, 0, 0, 0, 0);
  }

  void draw()
  {
    background(255, 0, 0);
    pushStyle();
    textAlign(CENTER, CENTER);
    text(title, width/2, height/2);
    popStyle();
  }
  void mousePressed() {
  }
}