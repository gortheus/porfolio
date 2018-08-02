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

abstract class GameLevel implements IGameLevel
{
  ArrayList<GameEntity> entities;
  String title;
  int levelNumber;
  int successTargetLevel;
  int failureTargetLevel;
  String basePath;
  PImage background;

  GameLevel(int _id, int _successTarget, int _failTarget)
  {
    levelNumber = _id;
    successTargetLevel = _successTarget;
    failureTargetLevel = _failTarget;
    entities = new ArrayList<GameEntity>();
    basePath = "levels/" +levelNumber+"/";
    try{
      background = loadImage(basePath+"images/background.png");
    }catch (Exception E){}
}

  void update()
  {
    for (GameEntity g : entities)
    {
      g.update();
    }
  }

  void draw()
  {
    if (background != null)
      image(background, 0, 0, width, height);
    else
      background(128);
    for (GameEntity g : entities)
    {
      g.draw();
    }
  }

  void mousePressed()
  {
  }

  void addEntity(GameEntity entity)
  {
    entities.add( entity);
  }

  boolean isDone()
  {
    return false;
  }

  int getNextLevel()
  {
    return successTargetLevel;
  }

  void setTitle(String t)
  {
    title = t;
  }
}