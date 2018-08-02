
void statemachine()
{
  if (victorypoints<=50)
  {
    tutorial();
  }

  if (victorypoints>50 && victorypoints<=100)
  {
    level1();
  }
  if (victorypoints>100 && victorypoints<=150)
  {
    level2();
  }
  if (victorypoints>150 && victorypoints<=200)
  {
    level3();
  }
  if (victorypoints>200 && victorypoints<=250)
  {
    level4();
  }
  if (victorypoints>250 && victorypoints<=300)
  {
    level5();
  }
  if (victorypoints>300 && victorypoints<=350)
  {
    level6();
  }
  if (victorypoints>350 && victorypoints<=400)
  {
    level7();
  }  
  if (victorypoints>400 && victorypoints<=450)
  {
    level8();
  }
  if (victorypoints>450 && victorypoints<=500)
  {
    level9();
  }
  if (victorypoints>500 && victorypoints<=550)
  {
    level10();
  }
  if (victorypoints>550 && victorypoints<=600)
  {
    level7();
  }
  if (victorypoints>600 && victorypoints<=650)
  {
    level7();
  }
}




void tutorial()
{
  pushStyle();
  fill(0);
  textSize(30);
  textAlign(CENTER);
  text("welcome!", 400, 500);
  text("WASD to move", 400, 550);
  text("stay inside the yellow circle to gain points", 400, 600);
  text("but dodge everything else!", 400, 650);
  text("get 1000 points to win!", 400, 700);
  text("good luck!", 400, 750);
  popStyle();
  tutorialgoal.activate();
}


void level1()
{

  if (state != "ded")
  {
    gdiag.activate();
  }
  ls1_1.activate();
  ls1_2.activate();
  ls1_3.activate();
}


void level2()
{

  if (state=="live")
  {
    gdiag.activate();
  }
  ls2_1.activate();
  ls2_2.activate();
}


void level3()
{
  if (state=="live")
  {
    gdiag.activate();
  }
  ls2_1.activate();
  ls2_2.activate();
  ls3_1.activate();
}
void level4()
{
  if (state=="live")
  {
    gdiag.activate();
  }
  ls2_1.activate();
  ls2_2.activate();
  ls4_1.activate();
  ls4_2.activate();
}

void level5()
{
  if (state=="live")
  {
    gdiag.activate();
  }
  ls2_1.activate();
  ls2_2.activate();
  ls4_1.activate();
  ls4_2.activate();
  ls5_1.activate();
  ls5_2.activate();
  ls5_3.activate();
  ls5_4.activate();
}

void level6()
{
  if (state=="live")
  {
    ghoriz.activate();
  }
  ss6_1.activate();
}

void level7()
{

  if (state=="live")
  {
    ghoriz2.activate();
  }
  ss6_1.activate();
  ss7_1.activate();
  ls7_1.activate();
  ls7_2.activate();
  ls7_3.activate();
  ls7_4.activate();
}

void level8()
{

  if (state=="live")
  {
    ghoriz2.activate();
  }
  ss6_1.activate();
  ss7_1.activate();
  ls7_1.activate();
  ls7_2.activate();
  ls7_3.activate();
  ls7_4.activate();
  ls8_1.activate();
  ls8_2.activate();
}
void level9()
{
  if (state=="live")
  {
    ghoriz2.activate();
  }
  ss6_1.activate();
  ss7_1.activate();
  ls7_1.activate();
  ls7_2.activate();
  ls7_3.activate();
  ls7_4.activate();
  ss9_1.activate();

}

void level10()
{
  if (state=="live")
  {
    gstatic.activate();
  }
  ss10_1.activate();
  ss10_2.activate();
  ss10_3.activate();
  ss10_4.activate();
  ls10_1.activate();
  ls10_2.activate();
  ls10_3.activate();
  ls10_4.activate();
}