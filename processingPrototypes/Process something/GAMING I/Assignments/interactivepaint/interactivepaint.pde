/*
  David Valencia
 GamingI
 Interactive Paint
 */

//variables
char tool='.';//tool
int strokecolor = #000000; //starts black
float strokesize = 1;//stroke size
int fillcolor = #000000;//color of shape
float shapesize = 5;//size of shape

//triangle points
float x1=0;
float y1=15;
float x2=10;
float y2=25;
float x3=-10;
float y3=25;

void setup()
{
  size(1000, 650);
  background(#ffffff);
  println(dist(20, 20, 20, 30));
  
}


void draw()
{
  stroke(strokecolor);
  strokeWeight(strokesize);
  fill(fillcolor);

  //tools
  if (tool == '1')//Pencil
  {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  if (tool == '0')//circle
  {  
    ellipse(pmouseX, pmouseY, shapesize, shapesize);
  }

  if (tool == '3')//triangle
  {
    triangle(mouseX+x1, mouseY+y1, mouseX+x2, mouseY+y2, mouseX+x3, mouseY+y3);
  }

  if (tool == '4')//square
  {
    rectMode(CENTER);
    rect(mouseX, mouseY, shapesize, shapesize);
  }
}

void keyPressed()
{
  //background changes
  if ( key == ' ')
  {
    background(#FFFFFF);
  }

  //drawing tools

  if (key == '1')//pencil
  {
    tool = '1';
  }

  if (key == '0')//circle
  {
    tool = '0';
  }

  if (key == '3')//triangle
  {
    tool = '3';
  }

  if (key == '4')//square
  {
    tool = '4';
  }
  //colors
  if (key == 'r')
  {
    strokecolor= #FF0000;
    fillcolor = #FF0000;
  }

  if (key == 'g')
  {
    strokecolor= #0BFF00;
    fillcolor = #0BFF00;
  }

  if (key == 'b')
  {
    strokecolor= #0035FF;
    fillcolor = #0035FF;
  }

  if (key == 'x') 
  { 
    strokecolor= #050505; 
    fillcolor = #050505;
  }

  if (key == 'w') 
  { 
    strokecolor= #FFFFFF; 
    fillcolor = #FFFFFF;
  }

  //size
  if (key == '+')
  {
    shapesize = shapesize+5;
    strokesize = strokesize+1;
    //triangle
    x1 =x1+1;
    y1 =y1+1;
    x2 = x2+1;
    y2 = y2+1;
    x3 = x3+1;
    y3 = y3+1;
  constrain(strokesize, 1, 9999);
  constrain(shapesize, 1, 9999);
  }

  if (key == '-')
  {
    shapesize = constrain(shapesize-5,1,99999);
    strokesize = constrain(strokesize-1, 1, 99999);
    //triangle
    x1 =x1-1;
    y1 =y1-1;
    x2 = x2-1;
    y2 = y2-1;
    x3 = x3-1;
    y3 = y3-1;
  }
}