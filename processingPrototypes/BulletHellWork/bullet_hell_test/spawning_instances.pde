

//shooters and character
//level1
lineshooter ls1_1;
lineshooter ls1_2;
lineshooter ls1_3;
//level2
lineshooter ls2_1;
lineshooter ls2_2;
//level3
lineshooter ls3_1;
//level 4
lineshooter ls4_1;
lineshooter ls4_2;
//level 5
lineshooter ls5_1;
lineshooter ls5_2;
lineshooter ls5_3;
lineshooter ls5_4;
//level 6
seekingshooter ss6_1;
//level 7
seekingshooter ss7_1;
seekingshooter ss7_2;
lineshooter ls7_1;
lineshooter ls7_2;
lineshooter ls7_3;
lineshooter ls7_4;
//level 8
lineshooter ls8_1;
lineshooter ls8_2;
//level 9
seekingshooter ss9_1;

//level 10
seekingshooter ss10_1;
seekingshooter ss10_2;
seekingshooter ss10_3;
seekingshooter ss10_4;
lineshooter ls10_1;
lineshooter ls10_2;
lineshooter ls10_3;
lineshooter ls10_4;
lineshooter ls10_5;
lineshooter ls10_6;
lineshooter ls10_7;
lineshooter ls10_8;
//level 11
shooter shooter2;
seekingshooter sshooter1;
seekingshooter sshooter2;
circleshooter cshooter1;
character ch1;
goal ghoriz;
goal ghoriz2;
goal gdiag;
goal tutorialgoal;
goal gstatic;
//timer instances
timer timerl;
timer timerc;
timer timers;
void summongoals()
{
  ghoriz=new goal(400, 200, 1, 0);
  ghoriz2=new goal(400, 400, 1, 0);
  gdiag=new goal(400, 75, 1, 1);
  tutorialgoal=new goal(400, 300, 0, 0);
  gstatic=new goal(400,400,0,0);
}






void summonshooters()
{
  ////////////////////////////////////////////////
  ls1_1= new lineshooter(50, 0, 0, 0, 0, 50);
  ls1_2= new lineshooter(750, 0, 0, 0, 0, 50);
  ls1_3= new lineshooter(400, 0, 0, 0, 0, 100);
  ////////////////////////////////////////////////
  ls2_1= new lineshooter(50, 0, 10, 0, 0, 50);
  ls2_2= new lineshooter(750, 0, -10, 0, 0, 50);
  ////////////////////////////////////////////////
  ls3_1= new lineshooter(400, 750, 0, 0, 0, -100);
  ////////////////////////////////////////////////
  ls4_1= new lineshooter(50, 750, 10, 0, 0, -50);
  ls4_2= new lineshooter(750, 750, -10, 0, 0, -50);
  ////////////////////////////////////////////////
  ls5_1=new lineshooter(400, 400, 0, 0, -100, 0);
  ls5_2=new lineshooter(400, 400, 0, 0, 100, 0);
  ls5_3=new lineshooter(400, 400, 0, 0, 0, 100);
  ls5_4=new lineshooter(400, 400, 0, 0, 0, -100);
  ////////////////////////////////////////////////
  ss6_1=new seekingshooter(400, 750, 0, 0, 5);
  //////////////////////////////////////////////
  ss7_1=new seekingshooter(400, 50, 0, 0, 5);
  ls7_1=new lineshooter(0, 300, 0, 0, 50, 0);
  ls7_2=new lineshooter(800, 300, 0, 0, -50, 0);
  ls7_3=new lineshooter(0, 500, 0, 0, 50, 0);
  ls7_4=new lineshooter(800, 500, 0, 0, -50, 0);
  ////////////////////////////////////////////////
  ls8_1=new lineshooter(400, 50, 1, 0, 0, 50);
  ls8_2=new lineshooter(400, 750, 1, 0, 0, -50);
  //////////////////////////////////////////////
  ss9_1=new seekingshooter(800, 400, 0, 0,5);

  //////////////////////////////////////////////
  ss10_1=new seekingshooter(400, 400, 200, 1, "c", 10, 1);
  ss10_2=new seekingshooter(400, 400, 200, 1, "c", 200, 1);
  ss10_3=new seekingshooter(400, 400, 200, 1, "cc", 10, 1);
  ss10_4=new seekingshooter(400, 400, 200, 1, "cc", 200, 1);
  ls10_1=new lineshooter(300, 300, 0, 0, 50, 0);
  ls10_2=new lineshooter(500, 300, 0, 0, 0, 50);
  ls10_3=new lineshooter(300, 500, 0, 0, 0, -50);
  ls10_4=new lineshooter(500, 500, 0, 0, -50, 0);
  ls10_5=new lineshooter(300, 300, 0, 0, 0, 50);
  ls10_6=new lineshooter(500, 300, 0, 0, -50, 0);
  ls10_7=new lineshooter(300, 500, 0, 0, 50, 0);
  ls10_8=new lineshooter(500, 500, 0, 0, 0, -50);
   //////////////////////////////////////////////
  //sshooter1= new seekingshooter(750, 750, 0, 0);
  //sshooter2=new seekingshooter(50, 750, 0, 0);
  //cshooter1=new circleshooter(400, 400, 0, 0);
  println("shooters spawned");
}

void summontimers()
{
  timerl=new timer(1500);
  timerc=new timer(5000);
  timers=new timer(1500);
}