/*
  David Valencia
 Gaming I
 Traffic light
 */

//variables

float halfheight;
float halfwidth;
int _nocolor = #FFFFFF;
int light1 = #FFFFFF;
int light2 = #FFFFFF;
int light3 = #FFFFFF;
int randomizer = #FFFFFF;
int randomnumb;

void setup()
{
  size(800, 500);

  halfwidth = width/2;
  halfheight = height/2;
}



void draw()
{

  background(#7C7A7A);

  //REDLIGHT

  fill(light1);
  ellipse(halfwidth, halfheight-80, 70, 70);

  //YELLOW LIGHT

  fill(light2);
  ellipse(halfwidth, halfheight, 70, 70);

  //GREENLIGHT

  fill(light3);
  ellipse(halfwidth, halfheight+80, 70, 70);

  //Everything light
  fill(randomizer);
  ellipse(halfwidth+80, halfheight+90, 20, 20);



  //DISTance Formula
  //println(dist(halfwidth+80, halfheight+90, mouseX, mouseY));
}

void mousePressed()
{
  if (mouseButton == LEFT) 
  {

    //RED LIGHT

    if (light1==#FFFFFF && (dist(mouseX, mouseY, halfwidth, halfheight-80)<= 35.014282))
    { 
      light1=#FF0B03;
      light3= #FFFFFF;
      light2= #FFFFFF;
    } else { 
      if (light1==#FF0B03  && (dist(mouseX, mouseY, halfwidth, halfheight-80)<= 35.014282))
      {    
        light1=#FFFFFF;
      }
    }

    //YELLOW LIGHT

    if (light2==#FFFFFF && (dist(mouseX, mouseY, halfwidth, halfheight)<= 35.014282))
    { 
      light2=#FFF303;
      light1= #FFFFFF;
      light3= #FFFFFF;
    } else { 
      if (light2==#FFF303  && (dist(mouseX, mouseY, halfwidth, halfheight)<= 35.014282))
      {    
        light2=#FFFFFF;
      }
    }

    //GREEN LIGHT

    if (light3==#FFFFFF && (dist(mouseX, mouseY, halfwidth, halfheight+80)<= 35.014282))
    { 
      light3= #10FF00;
      light1= #FFFFFF;
      light2= #FFFFFF;
    } else { 
      if (light3==#10FF00  && (dist(mouseX, mouseY, halfwidth, halfheight+80)<= 35.014282))
      {    
        light3=#FFFFFF;
      }
    }

    //EXCEPTION

    if (dist(halfwidth+80, halfheight+90, mouseX, mouseY) <= 10)
    {
      if (light1==#FF0B03 && light2==#FFF303 && light3==#10FF00)
      {
        light1= #FFFFFF;
        light2= #FFFFFF;
        light3= #FFFFFF;
      } else {
        if (light1==#FFFFFF || light2==#FFFFFF || light3==#FFFFFF)
        {
          light1=#FF0B03;
          light2=#FFF303;
          light3= #10FF00;
        }
      }

      //RANDOMNESS

      randomnumb= int(random(0, 4));
      if (randomnumb == 1)
      {
        randomizer = #FF0B03;
      } else { 
        if (randomnumb == 2)
        {
          randomizer = #FFF303;
        } else { 
          if (randomnumb == 3)
          {
            randomizer = #10FF00;
          }
        }
      }
    }
  }
}