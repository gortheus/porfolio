

class seekingshooter extends shooter
{
  ArrayList<bullet> bullets;
  PVector posc;//placeholder for PVector pos for bullet slope calculations
  float bulletangle;
  PVector difference;
float bspeed;

  seekingshooter(float pxpos, float pypos, float pxmove, float pymove, float pbspeed)  
  { 
    super(pxpos, pypos, pxmove, pymove);
    pos= new PVector(pxpos, pypos);
    bullets = new ArrayList<bullet>();
    charp=new PVector();
    slope= new PVector();
    movement= new PVector(pxmove, pymove);
    posc= new PVector();
    difference= new PVector();
    colors= new PVector(255,190,0);
    bspeed=pbspeed;
  }
  
  seekingshooter( float pxcore, float pycore, float pr, float ps, String protation,float protationdegree, float pbspeed)  
  { 
    super( pxcore, pycore, pr, ps, protation, protationdegree);
    pos= new PVector();
    bullets = new ArrayList<bullet>();
    charp=new PVector();
    slope= new PVector();
    posc= new PVector();
    difference= new PVector();
    colors= new PVector(255,190,0);
    bspeed=pbspeed;
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
  void addseekerbullet()
  {
    charp.set(ch1.sendcoords());
    posc.set(pos);
    difference.set(charp.x-posc.x, charp.y-posc.y);
    bulletangle=atan(difference.y/difference.x);if (charp.x<pos.x) {
      slope.x=-2.5*cos(bulletangle)*bspeed;
      slope.y=-2.5*sin(bulletangle)*bspeed;
    } else
    {
      slope.x=2.5*cos(bulletangle)*bspeed;
      slope.y=2.5*sin(bulletangle)*bspeed;
    }
    //println(slope.x);
    if(timers.timeup())
    {
    bullets.add(new bullet(pos, slope, 125, 0, 125));
    }
  }  


  void activate()
  {

    addseekerbullet();
    fill(0);
    shooting();
    fill(250, 0, 0);
    run(colors);
  }
} 