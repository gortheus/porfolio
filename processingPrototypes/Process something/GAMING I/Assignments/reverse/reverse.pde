/*
  David Valencia
 Gaming I
 
 */

//circle
float circlesize;
float circlefade;
//line
float lineheight;
//rectangle
float rectsize;
float rectcolor2;
float rectfade;
void setup()
{
  size(550, 550);
  //circle
  circlesize = width;
  circlefade = 200;
  //line
  lineheight = height/2;
  //rectangle
  rectsize = 0;
  rectcolor2 = #7F8906;
  rectfade = 450;
}


void draw()
{
  noStroke();
  background(#797979);


  //rectangle
  fill(#EE0002, rectfade);
  rectMode(CENTER);
  rect(width/2, height/2, rectsize, rectsize);
  //rectsize
  rectsize = rectsize+1;

  /*if (rectsize >= height+10 )
   {
   rectsize = 0;
   }*/
  //circle
  fill(#2BDE5B, circlefade);
  ellipse(width/2, height/2, circlesize, circlesize);
  circlesize = circlesize-1;
  //circlefade = circlefade-1;
  //sizereset
  /*if (circlesize <=-1)
   {
   circlesize = width;
   }
   */

  //Line
  strokeWeight(5);
  stroke(1);
  line(width/2, height/2, width/2, lineheight);

  if (rectsize >= height/2+10)
  {
    lineheight = lineheight+1;
  }

  if (lineheight >= height)
  {
    lineheight = height/2;
    rectsize = 0;
    circlesize = width;
  }
}