/*******************************************************
 *  Class name: ErrorLevel
 *
 *  Functionality: Simple splash screen used for errors.    
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
class ErrorLevel extends GameLevel
{

  ErrorLevel()
  {
    super(0, 0, 0);
  }

  void draw()
  {
    background(255, 0, 0);
    pushStyle();
    textAlign(CENTER, CENTER);
    text(title, width/2, height/2);
    popStyle();
  }
  void mousePressed() {
  }
}