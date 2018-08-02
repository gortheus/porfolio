
//Networking 
import netP5.*;
import oscP5.*;

OscP5 oscP5;
NetAddress myBroadcastLocation;

import java.net.InetAddress;
import java.net.UnknownHostException;
public String HostAddress; 
public String HostName;

int player;
int playerOneScore=0;
int playerTwoScore=0;
String playerOnePattern = "/player1";
String playerTwoPattern = "/player2";
String playerOne2DPattern = "/player2D1";
String playerTwo2DPattern = "/player2D2";

//Peasy cam(If going to be used)
//import peasy.*;
//import peasy.org.apache.commons.math.*;
//import peasy.org.apache.commons.math.geometry.*;

//PeasyCam camera;

//normal
PImage grid;
PImage background;
PImage playerTexture;
PImage goalTexture;
PImage pelletTexture;
PImage goalTexture2;
int level = 0;
int playerTwoX, playerTwoY, playerTwoZ, playerOneX, playerOneY, playerOneZ;
int playerTwo2DX, playerTwo2DY, playerOne2DX, playerOne2DY;
Level1 lvl1;
Level2 lvl2;
Level3 lvl3;
Level4 lvl4;
void setup() {
  size(900, 700, P3D);

  oscP5 = new OscP5(this, 22000);
  myBroadcastLocation = new NetAddress(HostAddress, 12000); //change HostAddress to the server IP Address
  lvl4 = new Level4();
}

void draw() {
  if (level == 0)
  {
    startScreen();
  }
  if (level == 1) { 
    lvl1.draw();
    if (lvl1.state() == 1) { 
      lvl2 = new Level2();
      level = 2;
    }
  }
  if (level == 2) { 
    lvl2.draw();
    if (lvl2.state() == 1) { 
      lvl3 = new Level3();
      level = 3;
    }
  }
  if (level == 3) {
    lvl3.draw();
    //if (lvl3.state() == 1) { 
    //lvl4 = new Level4();
    //level = 4;
    // }
  }
  if (level == 4) lvl4.draw();
}


void keyPressed() {
  if (key == '1') {  
    lvl1 = new Level1();
    level = 1;
  }
  if (level == 1) lvl1.keyPressed();
  if (level==1) {
    if (key=='2')
    {
      lvl2 = new Level2();
      level=2;
    }
  }
  if (level == 2) lvl2.keyPressed();

  if (key=='3')
  {
    lvl3 = new Level3();
    level=3;
  }
  if (level == 3) lvl3.keyPressed();

  //if (key=='4')
  //{
    //lvl4 = new Level4();
    //level=4;
 // }
  if (level == 4) lvl4.keyPressed();

  OscMessage join;
  switch(key) {
    case('o'):
    join = new OscMessage("/server/connect", new Object[0]);
    oscP5.flush(join, myBroadcastLocation);
    break;
    case('p'):
    join = new OscMessage("/server/disconnect", new Object[0]);
    oscP5.flush(join, myBroadcastLocation);
    break;
  }
}

void keyReleased() {
  if (level == 1) lvl1.keyReleased();
  if (level ==2) lvl2.keyReleased();
  if (level ==3) lvl3.keyReleased();
  if (level ==4) lvl4.keyReleased();
}


void mousePressed() {
}

void oscEvent(OscMessage recieve)
{
  if (player==1) {
    if (recieve.checkAddrPattern("/player2") == true) {
      if (recieve.checkTypetag("iii") == true)
      {
        int firstValue = recieve.get(0).intValue();
        int secondValue = recieve.get(1).intValue();
        int thirdValue = recieve.get(2).intValue();
        //println(firstValue, secondValue, thirdValue);

        playerTwoX = firstValue;
        playerTwoY = secondValue;
        playerTwoZ = thirdValue;

        println("player 2 position " +playerTwoX, playerTwoY, playerTwoZ);
      }
    }
  }
  if (player==2) {
    if (recieve.checkAddrPattern("/player1") == true) {
      if (recieve.checkTypetag("iii") == true)
      {
        int firstValue = recieve.get(0).intValue();
        int secondValue = recieve.get(1).intValue();
        int thirdValue = recieve.get(2).intValue();
        println(firstValue, secondValue, thirdValue);

        playerOneX = firstValue;
        playerOneY = secondValue;
        playerOneZ = thirdValue;

        println("player 1 position " +playerOneX, playerOneY, playerOneZ);
      }
    }
  }

  //2d levels
  if (player==1) {
    if (recieve.checkAddrPattern("/player2D2") == true) {
      if (recieve.checkTypetag("ii") == true)
      {
        int firstValue = recieve.get(0).intValue();
        int secondValue = recieve.get(1).intValue();
        //println(firstValue, secondValue, );

        playerTwo2DX = firstValue;
        playerTwo2DY = secondValue;

        println("player 2 position " +playerTwo2DX, playerTwo2DY);
      }
    }
  }
  if (player==2) {
    if (recieve.checkAddrPattern("/player2D1") == true) {
      if (recieve.checkTypetag("ii") == true)
      {
        int firstValue = recieve.get(0).intValue();
        int secondValue = recieve.get(1).intValue();
        //println(firstValue, secondValue);

        playerOne2DX = firstValue;
        playerOne2DY = secondValue;

        println("player 1 position " +playerOne2DX, playerOne2DY);
      }
    }
  }
  if (recieve.checkAddrPattern("/player/id") == true) {
    if (recieve.checkTypetag("i") == true) {
      player = recieve.get(0).intValue();
      println("you are player:" + player);
    }
  }

  if (recieve.checkAddrPattern("/level/update") == true) {
    if (recieve.checkTypetag("i") == true) {
      level = recieve.get(0).intValue();
      println("level:" + level);
    }
  }
}