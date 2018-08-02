//start screen
void startScreen(){
 fill(255);
 textSize(20);
 ipNumber();
  text(HostAddress, 50,50);
  textSize(40);
  text("Ball-E", 50,100);
  text("press 'p' to connect to server", 50,150);
  text("highscore:"+playerOneScore, 50,200);
 
}