import netP5.*;
import oscP5.*;

import java.net.InetAddress;
import java.net.UnknownHostException;
public String HostAddress; 
public String HostName;

OscP5 oscP5;
NetAddressList balleNetAddressList = new NetAddressList();
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
}

private void connect(String theIPaddress){
  if(!balleNetAddressList.contains(theIPaddress, balleBroadcastPort)){
    balleNetAddressList.add(new NetAddress(theIPaddress, balleBroadcastPort));
    println("### adding "+theIPaddress+" to the list.");
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