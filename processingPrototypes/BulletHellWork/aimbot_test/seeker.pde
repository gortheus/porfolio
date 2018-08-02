

class seekingshooter extends shooter
{
  ArrayList<bullet> bullets;
seekingshooter(float pxpos, float pypos, float pxmove, float pymove)
{
super(pxpos,pypos,pxmove,pymove);
shtpos= new PVector(pxpos, pypos);
    bullets = new ArrayList<bullet>();
    charp=new PVector();
    slope= new PVector();
    movement= new PVector(pxmove, pymove);
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
void addseekerbullet()
  {
    charp.set(ch1.sendcoords());
    slope.set(charp);
    slope.sub(shtpos);//difference
    slope.x/=50; slope.y/=50;
    bullets.add(new bullet(shtpos, slope,125,0,125));
  }  
  
 
  void activate()
  {
    
    addseekerbullet();
    fill(0);
    shooting();
    fill(250,0,0);
   run(); 
    
    
  }


  
  
  
  
  
} 