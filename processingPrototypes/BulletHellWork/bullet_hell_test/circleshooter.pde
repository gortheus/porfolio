class circleshooter extends shooter
{
  PVector shslope;
  ArrayList<seekingbullet> sbullets;
PVector bcolors;
  circleshooter(float pxpos, float pypos, float pxmove,float pymove)
  {
    super(pxpos, pypos, pxmove, pymove);
    sbullets = new ArrayList<seekingbullet>();
    bcolors=new PVector(255,0,0);
    colors=new PVector(0,0,0);
  }


  void shooting()
  {
    for (int i = sbullets.size()-1; i >= 0; i--) {
      seekingbullet b = sbullets.get(i);
      b.run(); 
     // println(i);
      if (b.isdead()) {
        sbullets.remove(i);
      }
    }
  } 
  
  
  void addseekerbullet()
  {

if(timerc.timeup())
{
    sbullets.add(new seekingbullet(pos));
}
  }  



  void activate()
  {
    addseekerbullet();
    shooting();
    run(colors,bcolors);
  }
}