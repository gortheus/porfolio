class LevelFactory
{
  int levels_passed_count = 0;
  ArrayList<Integer> levels_played = new ArrayList<Integer>();
  int next_level = -1;

  IGameLevel getLevel(int levelType, int levelNumber)
  {
    IGameLevel level = new ErrorLevel();

    String basePath="";
    String levelTitle;
    int successTargetLevel = -1;
    int successType = -1;
    int failureTargetLevel = -1;
    int failType = -1;

    basePath = "levels/" + levelType + "/" + levelNumber + "/";
    println ("=================================\n\n\nLoaded from: " + basePath + levelNumber + ".cfg");

    //let's try to locate the config file for this level
    try {
      String[] lines = loadStrings(basePath + levelNumber + ".cfg");
      //println("loaded " + lines.length + " lines of data");
      int configLineCount = 0; 
      for (String line : lines) {

        //handle comments....
        if (line.trim().startsWith("#"))
          continue;

        //process title
        if (configLineCount == 0)
        {
          println("Found level title: " + line);
          levelTitle = line;
        }

        //get the level type
        if (configLineCount == 1)
        {
          String[] level_nums = split(line.trim(), ",");
          levelType = int(level_nums[0]);
          levelNumber = int(level_nums[1]);
        }


        //process success and fail targets
        if (configLineCount == 2)
        {
          String[] win_loss = split(line.trim(), ",");
          String[] win_nums = split(win_loss[0], ":");
          successType = int(win_nums[0]);
          successTargetLevel = int(win_nums[1]);
          String[] loss_nums = split(win_loss[1], ":");
          failType = int(loss_nums[0]);
          failureTargetLevel = int(loss_nums[1]);
          basePath = "levels/" + successType + "/" + successTargetLevel + "/";
          //println("Next level to load: " + basePath + successTargetLevel + ".cfg");

          //now we have what we need..
          //println(levelType);
          if (levelType != 0 && levelType != 99)
          {
            if (successTargetLevel > 4) {
              if (levels_passed_count < 5) {
                next_level = int(random(0, successTargetLevel));
                while (!next_level_valid()) {
                  next_level = int(random(0, successTargetLevel));
                } 
                level = new CollectLevel(levelType, levelNumber, successType, next_level, failType, failureTargetLevel);
                levels_played.add(next_level);
                println("Levels passed: " + levels_passed_count + ":: Levels played: " + levels_played);
              } else {
                level = new CollectLevel(levelType, levelNumber, 2, 0, failType, failureTargetLevel);
                levels_passed_count = 0;
                levels_played.clear();
                println("Reset levels passed");
              }
              levels_passed_count+=1;
              println("Levels passed: " + levels_passed_count);
              println("random selected a next level: " + next_level);
            } else {
              level = new CollectLevel(levelType, levelNumber, successType, successTargetLevel, failType, failureTargetLevel);
            }
          } else if (levelType == 0 || levelType == 99) {
            if (levelType == 0)level = new SplashScreenLevel(levelType, levelNumber, successType, successTargetLevel, failType, failureTargetLevel);
            //if (levelType == 99)level = new CollectLevel(levelType, levelNumber, successType, successTargetLevel, failType, failureTargetLevel);
          } else
          {
            level.setTitle("Bad level type encountered.");
          }
        }

        if (configLineCount > 2)
        {
          String[] pieces = split(line.trim(), ',');
          if (pieces.length == 5) {
            int type = int(pieces[0]);
            int ex = int(pieces[1]);
            int ey = int(pieces[2]);
            int ew = int(pieces[3]);
            int eh = int(pieces[4]);
            if (type == 0) {
              level.addEntity(new EnemyEntity(ex, ey, ew, eh, type));
            } else if (type == 1) {
              level.addEntity(new PlayerEntity(ex, ey, ew, eh, type));
            } else if (type == 2) {
              level.addEntity(new CheseEntity(ex, ey, ew, eh, type));
            } else if (type == 3) {
              level.addEntity(new WallEntity(ex, ey, ew, eh, type));
            } else if (type == 4) {
              level.addEntity(new laserEntity (ex, ey, ew, eh, type));
            }
            //println("entity processed! type: " + type + " at location " + ex + "," + ey + " with dimensions " + ew + "," + eh );
          }
        }
        //println("Size: " + level.entities.size());
        configLineCount++;
      }
    }

    catch(Exception e) {
      println("Failed to load config file for level " + levelNumber + ": " + e.getMessage());
      level.setTitle("Failed to load level #" + levelNumber + ".  Please check configs");
    }
    return level;
  }

  boolean next_level_valid() {
    for (Integer lp : levels_played) {
      if (next_level == lp) {
        return false;
      }
    }
    return true;
  }
}