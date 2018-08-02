/*******************************************************
 *  File name: MobileGameEngine
 *
 *  Functionality: Main file for launching/testing our game.
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

MobileGame game; 

void setup() {
  orientation(LANDSCAPE);
  size(1280, 800);    //TABLET DISPLAY SIZE: 1280, 800
  game = new MobileGame("");
  imageMode(CENTER);  
  print(displayWidth, displayHeight);
}

void draw() {
  game.draw();
}

void mousePressed()
{
  println("mouse pressed..." + mouseX + "," + mouseY);
  game.mousePressed(mouseX, mouseY);
}