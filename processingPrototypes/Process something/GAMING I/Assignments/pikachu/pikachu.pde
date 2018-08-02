size(320,330);
noStroke();
//stroke(120); //adjust to see all shapes
//Tail
beginShape();

vertex(30, 130);
vertex(45, 110);
vertex(55, 140);
vertex(70, 130);
vertex(85, 145);
vertex(90, 142.5);
vertex(95, 145);
vertex(80, 150);
vertex(70, 140);
vertex(50, 150);
fill(#FEEA6F);
endShape(CLOSE);
//Body-Head
ellipse(110+15, 130, 80, 80);
ellipse(125+20, 105-5, 70, 80);

//Ears(left-right)
beginShape();

vertex(125+15, 80);
vertex(125+15, 85);
vertex(104.5-20+15, 72.5-15);
vertex(105-20+15, 60-20);
endShape(CLOSE);

beginShape();
vertex(165+15+15+15, 80-5);
vertex(160+15+15+15, 90+10);
vertex(155+10+15+15, 95+10);
vertex(145+10+15, 100+10);//10 for the 3 (after adjusting)
vertex(140+10+5+12, 95);
endShape(CLOSE);
//Eyes
fill(#441C10);
ellipse(125-10+16+4, 95-10, 20-5, 30-5);
ellipse(125+20+16, 95+10-10, 20-5, 30-5);
//Eyes-In
fill(#6D2E0D);
ellipse(131+4, 95-5, 8, 15);
ellipse(161, 95+5, 8, 15);
//Cheeks
fill(#FD9137);
ellipse(131-13, 90+3, 10, 10);
ellipse(161+10, 100+10, 10, 10);

//mouth
fill(#FEA24D);
triangle(105+25, 90+10, 130+20, 100+10, 110+25, 130-15);