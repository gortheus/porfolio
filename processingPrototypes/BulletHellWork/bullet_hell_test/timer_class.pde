
class timer
{
float timestart;
float timediff;
float timeend;
  
  
  
  
timer(float ptimediff)
{
  timestart=millis();
  timediff=ptimediff;
  timeend=timestart+timediff;
  
}



boolean timeup()
{
  if(millis()>=timeend)
  {
    return true;
    
  }
 return false; 
}

void reset()
{  if(millis()>=timeend+1)
  {
 timestart=millis();
  timeend=timestart+timediff; 
  }
    
}
  
}