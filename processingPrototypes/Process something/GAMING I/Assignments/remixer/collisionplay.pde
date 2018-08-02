void collisionplay() {
  if (mouseButton==LEFT) {
    if (dist(mouseX, mouseY, x1, y1)>=r)
    {
      sample1.trigger();
    }
     if (dist(mouseX, mouseY, x2, y2)>=r)
    {
      sample2.trigger();
    }
     if (dist(mouseX, mouseY, x3, y3)>=r)
    {
      sample3.trigger();
    }
  }
}