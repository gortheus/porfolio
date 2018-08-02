/*
  David Valencia
  Gaming1
  Party Mover
*/

int halfwidth;
int halfheight;
//triangle
int varaa;
int varab;
int varba;
int varbb;
int varca;
int varcb;
//Ellipse
int circlex;
int circley;
//rectangle
int rectheight;
void setup()
{
    size(450,500);
    
  halfwidth = width/2;
  halfheight = height/2;
  //triangle
  varaa = halfwidth;
  varab = 10;
  varba = halfwidth+30;
  varbb = 50;
  varca = halfwidth-30;
  varcb = 50;
  //cricle
  circlex = halfwidth;
  circley = halfheight;
  //rectangle
  rectheight = 400;
  noStroke();
}

void draw()
{
  background(0);
  fill(#E9FF00);
  triangle(varaa, varab, varba, varbb, varca, varcb);
  
  varaa = varaa+5;
  varab = varab+5;
  varba = varba+5;
  varbb = varbb+5;
  varca = varca+5;
  varcb = varcb+5;
  if (varca >= width-20)
  {
  varaa = halfwidth-50;
  varab = 10-50;
  varba = halfwidth+30-50;
  varbb = 50-50;
  varca = halfwidth-30-50;
  varcb = 50-50; 
  }
  //circle
  fill(#0017FF);
  ellipse(circlex, circley, 40, 40);
  circlex = circlex-4;
  circley = circley+4;
  if (circley >= height)
  {
  circlex = width;
  circley = 0;
  }
  //rectangle
  fill(#FF0004);
  rect(0, rectheight, 60, 60);
  rectheight = rectheight+10;
  if (rectheight >= height)
  {
   rectheight = 0-60;
  }
  
  
  
  println();
}