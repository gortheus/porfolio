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
 
 -message to winEvents 
 -creates file
 -runs as service 
 *******************************************************/

MobileGame game; 

void setup() {
  size(1200, 800);
  orientation(LANDSCAPE);
  game = new MobileGame("");
}

void draw() {
  game.draw();
}

void mousePressed()
{
  game.mousePressed(mouseX, mouseY);
}