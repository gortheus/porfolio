class LinearBullet extends Bullet {
PVector speed;
  LinearBullet(PVector _Location, PVector _size, PVector _speed) {
    super(_Location, _size, 0, 125, 125);
    speed = _speed.copy();
  }
  void draw(){
   update();
   super.draw();
  }
  
  void update(){
    location.add(speed);
  }
  
}
