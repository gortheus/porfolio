/*
  David Valencia
 Gaming I
 TITLE
 */

void title()

{ 

  background(#4F9CC4);
  noStroke();

  //BACKGROUND

  //CLOUDS

  fill(#FFFFFF);
  ellipse(50, 50, 50, 50);
  ellipse(80, 50, 55, 50);
  ellipse(200, 50, 55, 50);
  ellipse(230, 75, 55, 50);

  //SUN
  fill(#FFE603);
  ellipse(0, 0, 100, 200);

  //TEXT STUFF

  fill(textR, textG, textB);//int _textcolor=#FF004D;
  textSize(_textsize);//int _textsize=50;
  textAlign(CENTER);
  text("BALL CROSS\nPress 'Space' TO PLAY\n Press 'H' for HELP", textX, textY);//int textX=width/2;  int textY=height/2;
  //Text Color

  textR=int(random(255));
  textG=int(random(255));
  textB=int(random(255));
}