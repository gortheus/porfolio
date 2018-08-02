

class lineshooter extends shooter
{
  PVector shslope;
  ArrayList<bullet> bullets;
  //ArrayList <timer> ltimers;

  lineshooter(float pxpos, float pypos, float pxmove, float pymove, float shxslope, float shyslope)
  {
    super(pxpos, pypos, pxmove, pymove);
    slope= new PVector(shxslope/50, shyslope/50);
    bullets = new ArrayList<bullet>();
    colors= new PVector(0,125,0);
    //ltimers.add(new timer(1000));
  }


  void shooting()
  {
    for (int i = bullets.size()-1; i >= 0; i--) {
      bullet b = bullets.get(i);
      b.run(); 
     // println(i);
      if (b.isdead()) {
        bullets.remove(i);
      }
    }
  } 
  void addlinearbullet()
  {
if(timerl.timeup())
{
  bullets.add(new bullet(pos, slope, 0, 125, 125));
}
    
  }  



  void activate()
  {
    addlinearbullet();      
    shooting();
    run(colors);
  }
}