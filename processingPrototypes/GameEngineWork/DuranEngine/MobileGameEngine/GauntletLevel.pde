/*******************************************************
 *  Class name: GauntletLevel
 *
 *  Functionality: This level allows enemies, a player and a goal.
 *                 The player moves via mouse presses.  If you touch
 *                 a spike ball the fail condition is triggered and
 *                 if the goal is reached the next level is triggered.
 *                 NOTE:  The collisions tested are not fine tuned...needs work.
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

class GauntletLevel extends GameLevel
{
  ArrayList<SpikeBall> enemies = new ArrayList<SpikeBall>();
  Player player;
  boolean done, failed;
  NextLevelGoal goal;

  GauntletLevel(int _id, int _passLevelTarget, int failLevelTarget)
  {
    super(_id, _passLevelTarget, failLevelTarget);
    player = new Player(0, height/2, 20, 20);
  }

  boolean isDone() {
    return done;
  }

  void draw()
  {
    checkDeathCondition();
    checkPassCondition();
    super.draw();
    player.draw();
    for (SpikeBall s : enemies)
      s.draw();

    goal.draw();
  }

  void addSpikeBall(int _x, int _y, int _w, int _h)
  {
    enemies.add(new SpikeBall(_x, _y, _w, _h));
  }
  void mousePressed()
  {
    player.mousePressed();
  }

  void checkDeathCondition()
  {
    for (SpikeBall s : enemies)
    {
      if (dist(s.location.x, s.location.y, player.location.x, player.location.y) < 
        (s.size.x))
      {
        failed=true;
        done = true;
      }
    }
  }

  void checkPassCondition()
  {
    if (goal == null)
      return;
    if (dist(player.location.x, player.location.y, goal.location.x, goal.location.y) < goal.size.x)
    {
      failed = false;
      done=true;
    }
  }

  void addGoal(int ex, int ey, int ew, int eh)
  {
    goal = new NextLevelGoal(ex, ey, ew, eh);
  }
}