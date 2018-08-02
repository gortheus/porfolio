void help()

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
ellipse(0,0,100,200);

  //TEXT STUFF

  fill(textR,textG,textB);//int _textcolor=#FF004D;
  textSize(_textsize);//int _textsize=50;
  textAlign(CENTER);
  text("WASD For MOVEMENT\n AVOID other circles", textX, textY);
   text("press 'Space'\n to return to Main Menu", textX, textY+140);
  //Text Color
  
  textR=int(random(255));
  textG=int(random(255));
  textB=int(random(255));
}