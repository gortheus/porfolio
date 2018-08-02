class Tree extends GameEntity
{
  PImage treeImage;

  Tree(int _x, int _y, int _w, int _h)
  {
    super(_x, _y, _w, _h);
    treeImage = loadImage("npc_images/tree.png");
  }

  void draw()
  {
    image(treeImage, location.x, location.y, size.x, size.y);
  }
}