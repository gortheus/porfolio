/*******************************************************
 *  Class name: GameEntity
 *
 *  Functionality: Base class for any object in our
 *    game world.  It provides a base of attributes and
 *    functionality for objects that reside in the game.
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

class GameEntity {
  PVector location, size;

  GameEntity() {
    this(0, 0, 10, 10);
  }

  GameEntity(int _x, int _y, int _w, int _h)
  {
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
  }

  void update()
  {
    //default is no movement...
  }

  void draw()
  {
    pushStyle();
    noStroke();
    fill(255, 0, 0);
    ellipse(location.x, location.y, size.x, size.y);
    popStyle();
  }
}