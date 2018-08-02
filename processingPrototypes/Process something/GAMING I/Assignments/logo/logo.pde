/*
  David Valencia
  Gaming1
  Logo movement
*/


/*tree formula
fill(#93612B);
rect(75, 355, 9, 15);
fill(#1A893A);
triangle(80, 330, 100, 350, 60, 350);
triangle(80, 340, 100, 360, 60, 360);
*/

void setup()
{
size(460,460);
noStroke();
//stroke(1); //be able to see
}

void draw()
{
background(#4045AA);

//sun
fill(#F7EE2D);
ellipse(260,240,220,220);

//hills
fill(#5CD33C);
ellipse(120, 400, 350, 250);
ellipse(420, 440, 500, 400);

//trees

fill(#93612B);
rect(75, 355, 9, 15);
fill(#1A893A);
triangle(80, 330, 100, 350, 60, 350);
triangle(80, 340, 100, 360, 60, 360);
  

//Logo
//original mouse= 350, 150
fill(#FF0000);
triangle(mouseX+30, mouseY-110, mouseX+50, mouseY-50, mouseX-30, mouseY-30);
fill(#17BCE8);
triangle(mouseX+60, mouseY-40, mouseX+90, mouseY+50, mouseX, mouseY);
fill(#166BDE);
triangle(mouseX-70, mouseY+30, mouseX+90, mouseY+50, mouseX, mouseY);
fill(#9FCE3A);
triangle(mouseX-70, mouseY+30, mouseX-30, mouseY-10, mouseX, mouseY);


}