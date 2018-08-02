/*******************************************************
 *  Class name: GameLevel
 *
 *  Functionality: Base class for a Level within our game
 *    engine.  Provides baseline functionality and management
 *    of in-level entities.
 *
 *  Author: jduran
 *
 *  License:
 *    This library is free software; you can redistribute it and/or
 *    modify it under the terms of the GNU Lesser General Public
 *    License as published by the Free Software Foundation;
 *    version 2.1 of the License.
 *
 *    This library is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *    Lesser General Public License for more details.
 *******************************************************/

class CollectLevel extends GameLevel
{
  ArrayList<Flower> flowers = new ArrayList<Flower>();

  CollectLevel(int _id, int _passLevelTarget, int failLevelTarget)
  {
    super(_id, _passLevelTarget, failLevelTarget);
  }

  boolean isDone() {
    return (flowers.size() == 0);
  }

  void draw()
  {
    super.draw();
    for (Flower f : flowers)
      f.draw();
  }

  void addFlower(int _x, int _y, int _w, int _h)
  {
    flowers.add(new Flower(_x, _y, _w, _h));
  }
  void mousePressed()
  {
    for (int i = flowers.size()-1; i >= 0; i--)
    {
      if (dist(mouseX, mouseY, flowers.get(i).location.x, flowers.get(i).location.y) < flowers.get(i).size.x)
      {
        flowers.remove(i);
      }
    }
  }
}