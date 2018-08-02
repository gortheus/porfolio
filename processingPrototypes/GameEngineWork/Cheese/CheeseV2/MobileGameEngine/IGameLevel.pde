/*******************************************************
 *  Class name: IGameLevel
 *
 *  Functionality: Basic interface for a Game Level.  
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
interface IGameLevel
{
  void update();
  void draw();
  void mousePressed();
  boolean isDone();
  int getNextLevel();
  void setTitle(String t);
  void addEntity(GameEntity e);
}