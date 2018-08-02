/*******************************************************
 *  Class name: LevelFactory
 *
 *  Functionality: Contains all logic for parsing level config file
 *    and creating the appropriate level object.
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

class LevelFactory
{

  IGameLevel getLevel(int _levelNumber)
  {
    IGameLevel level = new ErrorLevel();

    String basePath="";
    String levelTitle;
    int levelNumber = _levelNumber;

    println("--------------------------------------------");
    println("Creating level number: " + levelNumber);

    //initialize with invalid level IDs.  All levels should be positive numbers
    int levelType = -1;
    int successTargetLevel = -1;  
    int failureTargetLevel = -1;

    basePath = "levels/" +_levelNumber+"/";
    println (basePath + _levelNumber + ".cfg");
    String[] lines;
    ArrayList<String> configLines = new ArrayList<String>();

    //let's try to locate the config file for this level
    try {
      lines = loadStrings(basePath + levelNumber + ".cfg");
      println("loaded " + lines.length + " lines of data");
      configLines = sanitizeConfigFile(levelNumber);
    }
    catch(Exception e) {
      println("Failed to load config file for level " + levelNumber + ": " + e.getMessage());
      level.setTitle("Failed to load level #" +levelNumber + ".  Please check configs");
      return level;
    }

    //We have a config and we have sanitized it..let's jam!
    levelTitle = configLines.get(0);
    println("Found level title: " + levelTitle);

    levelType = int(configLines.get(1).trim());

    println("Processing level pass/fail targets..");
    String[] pieces = split(configLines.get(2).trim(), ',');
    if (pieces.length == 2) {
      successTargetLevel = int(pieces[0]) ;
      failureTargetLevel = int(pieces[1]) ;
      println("success level: " + successTargetLevel );
      println("failure level: " + failureTargetLevel);
    }

    if (levelType == 0)
    {
      println("Creating Splash Screen Level...");
      level = new SplashScreenLevel(levelNumber, successTargetLevel, failureTargetLevel);
    } else if (levelType == 1)
    {
      println("Creating Collect Level...");
      level = new CollectLevel(levelNumber, successTargetLevel, failureTargetLevel);
      configureCollectLevel( configLines, (CollectLevel)level);
    } else if (levelType == 2)
    {
       level = new GauntletLevel(levelNumber, successTargetLevel, failureTargetLevel);
       configureGauntletLevel(configLines, (GauntletLevel)level);
    }else
    {
      level.setTitle("Bad level type encountered.");
    }
    println("-----------------------------------");
    return level;
  }

  private ArrayList<String> sanitizeConfigFile(int levelNumber)
  {
    ArrayList<String> config=new ArrayList<String>();
    String _basePath = "levels/" +levelNumber+"/";

    String[] lines = loadStrings(_basePath + levelNumber + ".cfg");
    println("loaded " + lines.length + " lines of data");

    for (String l : lines)
    {
      if (!l.startsWith("#"))
        config.add(l);
    }

    return config;
  }

  /*
      name: configureCollectLevel
   description: configures a collectLevel via a sanitized config file and the level.
   in this level type all entries after the 3rd, are the collectables
   
   */
  private void configureCollectLevel(ArrayList<String> config, CollectLevel clevel)
  {
    println("Processing entities from config file..");
    for (int i = 3; i < config.size(); i++)//configLineCount > 2)
    {
      String[] pieces = split(config.get(i).trim(), ',');
      if (pieces.length == 5) {
        int type = int(pieces[0]);
        int ex = int(pieces[1]) ;
        int ey = int(pieces[2]) ;
        int ew = int(pieces[3]) ;
        int eh = int(pieces[4]) ;
        if (type == 0)
          clevel.addEntity(new Tree(ex, ey, ew, eh));
        else if (type == 1)
          clevel.addFlower(ex, ey, ew, eh);

        println("entity processed! type: " + type + " at location " + ex + "," + ey + " with dimensions " + ew + "," + eh );
      }
    }
  }
  
    /*
      name: configureGauntletLevel
   description: configures a collectLevel via a sanitized config file and the level.
   in this level type all entries after the 3rd, are the collectables
   
   */
  private void configureGauntletLevel(ArrayList<String> config, GauntletLevel clevel)
  {
    println("Processing entities from config file..");
    for (int i = 3; i < config.size(); i++)//configLineCount > 2)
    {
      String[] pieces = split(config.get(i).trim(), ',');
      if (pieces.length == 5) {
        int type = int(pieces[0]);
        int ex = int(pieces[1]) ;
        int ey = int(pieces[2]) ;
        int ew = int(pieces[3]) ;
        int eh = int(pieces[4]) ;
        if (type == 0)
          clevel.addEntity(new Tree(ex, ey, ew, eh));
        else if (type == 1)
          clevel.addSpikeBall(ex, ey, ew, eh);
        else if (type == 2)
          clevel.addGoal(ex, ey, ew, eh);

        println("entity processed! type: " + type + " at location " + ex + "," + ey + " with dimensions " + ew + "," + eh );
      }
    }
  }
}