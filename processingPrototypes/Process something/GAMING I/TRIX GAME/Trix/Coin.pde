PImage coin;
int count=0;
boolean appear=true;
class Coin {
  int x, y;

  Coin( int _x, int _y) {
    x= _x;
    y= _y;
  }

  void draw() {
    image(coin, x, y, 45, 45);
    rect(x, y, 35, 35);
  }
}