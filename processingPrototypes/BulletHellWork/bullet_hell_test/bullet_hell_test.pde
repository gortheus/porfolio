/*Zachary Robbins and David Valencia (did I spell it right?
 Testing for various methods of bullet hell enemies.
 created 6/5, work in progress.
 */



//state
float victorypoints;
float level=0;
String state="live";
boolean resetting=false;
void setup()
{
  size(800, 800);
  background(125);
  summonshooters();
  summontimers();
  summongoals();
  ch1= new character(400, 100);
}
void draw()
{






  background(125);
  statemachine();
  ch1.wincondition();
  println(victorypoints);
  if (state=="won")
  {
    background(100, 200, 100);
    fill(0);
    textSize(50);
    text("you won!", 100, 100);
  } else
  {

    if (state=="ded")
    {
      background(200, 100, 100);
      fill(0);
      textSize(50);
      text("Press R to restart", 100, 100);
    } else
    {

      pushStyle();
      fill(0);
      textSize(30);
      text("score:" + victorypoints, 10, 25);
      fill(125);
      strokeWeight(0);
      rect(160, 0, 150, 40);
      popStyle();

      ch1.move();
      timerl.reset();
      timerc.reset();
      timers.reset();
    }
  }
}

void keyPressed()
{
  ch1.keypressed();
  if (state=="ded")
  {
    ch1.pos.x=400;
    ch1.pos.y=400;
    if (key=='r')
    {

      timerl.reset();
      timerc.reset();
      timers.reset();



      if (victorypoints<50)
      {
        victorypoints=0;
      }

      if (victorypoints>=50 && victorypoints<100)
      {
        victorypoints=50;
      }

      if (victorypoints>=100 && victorypoints<150)
      {
        victorypoints=100.1;
      }
      if (victorypoints>=150 && victorypoints<200)
      {
        victorypoints=150.1;
      }
      if (victorypoints>=200 && victorypoints<250)
      {
        victorypoints=200.1;
      }
      if (victorypoints>=250 && victorypoints<300)
      {
        victorypoints=250.1;
      }
      if (victorypoints>=300 && victorypoints<350)
      {
        victorypoints=300.1;
      }
      if (victorypoints>=350 && victorypoints<400)
      {
        victorypoints=350.1;
      }
      if (victorypoints>=400 && victorypoints<450)
      {
        victorypoints=400.1;
      }
      if (victorypoints>=450 && victorypoints<500)
      {
        victorypoints=450.1;
      }
      if (victorypoints>=500 && victorypoints<550)
      {
        victorypoints=500.1;
      }
      if (victorypoints>=550 && victorypoints<600)
      {
        victorypoints=550.1;
      }
      if (victorypoints>=600 && victorypoints<650)
      {
        victorypoints=600.1;
      }
      if (victorypoints>=650 && victorypoints<700)
      {
        victorypoints=650.1;
      }
      if (victorypoints>=700 && victorypoints<750)
      {
        victorypoints=700.1;
      }
      if (victorypoints>=750 && victorypoints<800)
      {
        victorypoints=750.1;
      }
      if (victorypoints>=800 && victorypoints<850)
      {
        victorypoints=800.1;
      }
      if (victorypoints>=850 && victorypoints<900)
      {
        victorypoints=850.1;
      }
      if (victorypoints>=900 && victorypoints<950)
      {
        victorypoints=900.1;
      }
      if (victorypoints>=950 && victorypoints<1000)
      {
        victorypoints=950.1;
      }
      state="live";

      resetting=true;
    }
  }

  if (key=='9')
  {
    victorypoints=401;
  }
}

void keyReleased()
{
  ch1.keyreleased();
}