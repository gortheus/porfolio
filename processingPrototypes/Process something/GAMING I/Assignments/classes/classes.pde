Ball b;

void setup()
{
  size(600, 800);
  b=new Ball(30, 80, 100);//Enter 3 values and it will find out what CONSTRUCTOR to use ___ may also work if you make a Constructor with a different data type, to help differenciate
}

void draw()
{
 // b.show();// Calls For the FUNCTION "SHOW" with the dot (.) operator
  if (b.size > b.x) {
    b.show();
  }
}