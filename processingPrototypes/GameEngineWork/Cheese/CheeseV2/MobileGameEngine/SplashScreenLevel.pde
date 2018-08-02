/*******************************************************
 *  Class name: SplashScreenLevel
 *
 *  Functionality: Simple splash screen level used to display an image.    
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
class SplashScreenLevel extends GameLevel
{
  PImage backgroundImage;
  boolean clicked = false;

  SplashScreenLevel(int id, int successLevel, int failureLevel)
  {
    super(id, successLevel, failureLevel);
    try{
      backgroundImage = loadImage("levels/" + id + "/images/" + id + ".png");
    }catch (Exception e){
      backgroundImage = loadImage("levels/" + id + "/images/" + id + ".jpg");
    }
  }

  void draw()
  {
    pushStyle();
    if (backgroundImage != null){
      imageMode(CENTER);
      image(backgroundImage, width/2, height/2, width, height);
    }else{
      background(193);
      pushStyle();
        textAlign(CENTER);
        text(displayWidth + ", " + displayHeight, width/2, height/2);
      popStyle();
    }
    popStyle();
  }


  boolean isDone() {
    return clicked;
  }

  void mousePressed() {
    println("Splash screen clicked on...");
    clicked = true;
  }
}