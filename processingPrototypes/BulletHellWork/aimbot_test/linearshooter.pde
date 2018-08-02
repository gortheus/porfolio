

class lineshooter extends shooter
{
  PVector shslope;
  ArrayList<bullet> bullets;
  
  lineshooter(float pxpos, float pypos, float pxmove, float pymove,float shxslope,float shyslope)
  {
    super(pxpos,pypos,pxmove,pymove);
    slope= new PVector(shxslope/50,shyslope/50);
    bullets = new ArrayList<bullet>();
  }
  
  
  void shooting()
  {
    for (int i = bullets.size()-1; i >= 0; i--) {
      bullet b = bullets.get(i);
      b.run(); 
      println(i);
      if (b.isdead()) {
        bullets.remove(i);
      }
    }
  } 
void addlinearbullet()
  {

    bullets.add(new bullet(shtpos, slope,0,125,125));
  }  
  
  
  
    void activate()
  {
    addlinearbullet();
    shooting();
      fill(125,125,0);
   run(); 
    
    
  }
}