
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.io.OutputStream;
import java.io.FileOutputStream;


class GameSettings {
  Properties prop;
  GameSettings()
  {
    prop = new Properties();
    InputStream input = null;
    load();
  }

  void load()
  {
    FileInputStream input; 
    try {
      input = new FileInputStream("game.properties");
      prop.load(input);
    } 
    catch (IOException ex) {
      //println("Error: " + ex.getMessage());
      //println("No property file found, creating a new one.");
    }
  }


  void save()
  {
    OutputStream output = null;

    try {

      output = new FileOutputStream("game.properties");

      // save properties to project root folder
      prop.store(output, null);
    } 
    catch (IOException io) {
      io.printStackTrace();
    }
  }

  String getValue(String settingName)
  {
    return prop.getProperty(settingName, null);
  }

  void setValue(String settingName, String settingValue)
  {
    prop.setProperty(settingName, settingValue);
  }
}