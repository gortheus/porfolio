/*******************************************************
 *  Class name: MobileGame
 *
 *  Functionality: Our base engine class.    
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

class MobileGame
{
  IGameLevel currentLevel;
  GameSettings settings;
  String title;
  LevelFactory levelMaker; 

  MobileGame(String _title)
  {
    title = _title;
    settings = new GameSettings();
    levelMaker = new LevelFactory();
  }

  void draw()
  {
    if (currentLevel == null)
    {
      showMenu();
    } else
    {
      currentLevel.update();
      currentLevel.draw();
      if (currentLevel.isDone())
      {
        println("level is done. loading next level: " + currentLevel.getNextLevel());
        currentLevel = levelMaker.getLevel(currentLevel.getNextLevel());
      }
    }
  }

  void showMenu()
  {
    background(0);
    pushStyle();
    textAlign(CENTER, CENTER);
    textSize(height*.25);    
    fill(255);
    text(title, width/2, height/2);
    textSize(height*.05);
    text("press to load level", width/2, height/2 + height*.25);
    popStyle();
  }

  void mousePressed(int mx, int my)
  {
    if (currentLevel == null)
    {
      currentLevel = levelMaker.getLevel(0);
    } else
      currentLevel.mousePressed();
  }
}