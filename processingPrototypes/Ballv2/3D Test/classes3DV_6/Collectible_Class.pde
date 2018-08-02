class Pill
{
  int size;
  
  Pill()
  {
   size=20; 
  }
  
  void make()
  {
   fill(0,0,255);
    stroke(100);
    sphere(size); 
  }
}