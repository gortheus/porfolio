import netP5.*;
import oscP5.*;

import java.net.InetAddress;
import java.net.UnknownHostException;
public String HostAddress; 
public String HostName;

OscP5 oscP5;
NetAddressList balleNetAddressList = new NetAddressList();
NetAddress myRemoteLocation;
int balleListeningPort = 12000;
int balleBroadcastPort = 22000;
String balleConnectPattern = "/server/connect";
String balleDisconnectPattern = "/server/disconnect";

void setup()
{
  size(800, 800);
  ipNumber();
  oscP5 = new OscP5(this, balleListeningPort);
}

void draw()
{
  background(0);
  fill(255);
  textSize(20);
  text("server IP Adress:   "+HostAddress, 50, 50);
}

void oscEvent(OscMessage connect) {
  if (connect.addrPattern().equals(balleConnectPattern)) {
    connect(connect.netAddress().address());
  } else if (connect.addrPattern().equals(balleDisconnectPattern)) {
    disconnect(connect.netAddress().address());
  } else {
    oscP5.send(connect, balleNetAddressList);
  }
  if(connect.checkAddrPattern("/player1") == true){
    if(connect.checkTypetag("iii") == true)
    {
      int player1x = connect.get(0).intValue();
      int player1y = connect.get(1).intValue();
      int player1z = connect.get(2).intValue();
      println("player1 "+player1x, player1y, player1z);
      OscMessage recieve = new OscMessage("/player2");
      recieve.add(player1x);
      recieve.add(player1y);
      recieve.add(player1z);
      oscP5.send(recieve, balleNetAddressList);
    }
  }
  if(connect.checkAddrPattern("/player2") == true){
    if(connect.checkTypetag("iii") == true)
    {
      int player2x = connect.get(0).intValue();
      int player2y = connect.get(1).intValue();
      int player2z = connect.get(2).intValue();
      println("player2 "+player2x, player2y, player2z);
      OscMessage recieve = new OscMessage("/player1");
      recieve.add(player2x);
      recieve.add(player2y);
      recieve.add(player2z);
      oscP5.send(recieve, balleNetAddressList);
    }
  }
  
  //2D levels
  if(connect.checkAddrPattern("/player2D1") == true){
    if(connect.checkTypetag("ii") == true)
    {
      int player1x = connect.get(0).intValue();
      int player1y = connect.get(1).intValue();
      println("player1 "+player1x, player1y);
      OscMessage recieve = new OscMessage("/player2D2");
      recieve.add(player1x);
      recieve.add(player1y);
      oscP5.send(recieve, balleNetAddressList);
    }
  }
  if(connect.checkAddrPattern("/player2D2") == true){
    if(connect.checkTypetag("ii") == true)
    {
      int player2x = connect.get(0).intValue();
      int player2y = connect.get(1).intValue();
      println("player2 "+player2x, player2y);
      OscMessage recieve = new OscMessage("/player2D1");
      recieve.add(player2x);
      recieve.add(player2y);
      oscP5.send(recieve, balleNetAddressList);
    }
  }
  
  
  if(connect.checkAddrPattern("/level/2") == true){
    if(connect.checkTypetag("i") == true)
    {
      int level = connect.get(0).intValue();
      println("level = "+ level);
      OscMessage recieve = new OscMessage("/level/update");
      recieve.add(level);
      oscP5.send(recieve, balleNetAddressList);
    }
  }
  
  if(connect.checkAddrPattern("/level/3") == true){
    if(connect.checkTypetag("i") == true)
    {
      int level = connect.get(0).intValue();
      println("level = "+ level);
      OscMessage recieve = new OscMessage("/level/update");
      recieve.add(level);
      oscP5.send(recieve, balleNetAddressList);
    }
  }
 
 if(connect.checkAddrPattern("/level/4") == true){
    if(connect.checkTypetag("i") == true)
    {
      int level = connect.get(0).intValue();
      println("level = "+ level);
      OscMessage recieve = new OscMessage("/level/update");
      recieve.add(level);
      oscP5.send(recieve, balleNetAddressList);
    }
  }
}


private void connect(String theIPaddress){
  if(!balleNetAddressList.contains(theIPaddress, balleBroadcastPort)){
    balleNetAddressList.add(new NetAddress(theIPaddress, balleBroadcastPort));
    println("### adding "+theIPaddress+" to the list.");
    
  myRemoteLocation = new NetAddress(theIPaddress, 22000);
    OscMessage recieve = new OscMessage("/player/id");
    recieve.add(balleNetAddressList.list().size());
    oscP5.send(recieve, myRemoteLocation);
  }else{
   println(theIPaddress + "is already connected");  
  }
  println("### currently there are "+balleNetAddressList.list().size()+" remote locations connected.");
}

private void disconnect(String theIPaddress){
  if(balleNetAddressList.contains(theIPaddress, balleBroadcastPort)){
    balleNetAddressList.remove(theIPaddress, balleBroadcastPort);
     println("### removing "+theIPaddress+" from the list.");
  }else{
   println(theIPaddress + "is not connected");  
  }
  println("### currently there are "+balleNetAddressList.list().size());
}