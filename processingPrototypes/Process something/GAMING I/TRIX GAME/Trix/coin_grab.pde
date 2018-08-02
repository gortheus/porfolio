boolean grab1, grab2, grab3, grab4, grab5=false;
void coinGrab() {
  if (grab1==false) {
    if (trix1.x + (trix1.size-10)/2 >= coin1.x - 35/2 && trix1.x - (trix1.size-10)/2 <= coin1.x + 35/2) //COLLISION X
    {
      if (trix1.y + trix1.size/2 >= coin1.y - 35/2 && trix1.y - trix1.size/2 <= coin1.y + 35/2) //COLLISION Y
      {
        count+=1;
        grab1 = true;
      }
    }
  }
  if (grab2==false) {
    if (trix1.x + (trix1.size-10)/2 >= coin2.x - 35/2 && trix1.x - (trix1.size-10)/2 <= coin2.x + 35/2) //COLLISION X
    {
      if (trix1.y + trix1.size/2 >= coin2.y - 35/2 && trix1.y - trix1.size/2 <= coin2.y + 35/2) //COLLISION Y
      {
        count+=1;
        grab2 = true;
      }
    }
  }
  if (grab3==false) {
    if (trix1.x + (trix1.size-10)/2 >= coin3.x - 35/2 && trix1.x - (trix1.size-10)/2 <= coin3.x + 35/2) //COLLISION X
    {
      if (trix1.y + trix1.size/2 >= coin3.y - 35/2 && trix1.y - trix1.size/2 <= coin3.y + 35/2) //COLLISION Y
      {
        count+=1;
        grab3 = true;
      }
    }
  }
  if (grab4==false) {
    if (trix1.x + (trix1.size-10)/2 >= coin4.x - 35/2 && trix1.x - (trix1.size-10)/2 <= coin4.x + 35/2) //COLLISION X
    {
      if (trix1.y + trix1.size/2 >= coin4.y - 35/2 && trix1.y - trix1.size/2 <= coin4.y + 35/2) //COLLISION Y
      {
        count+=1;
        grab4 = true;
      }
    }
  }
  if (grab5==false) {
    if (trix1.x + (trix1.size-10)/2 >= coin5.x - 35/2 && trix1.x - (trix1.size-10)/2 <= coin5.x + 35/2) //COLLISION X
    {
      if (trix1.y + trix1.size/2 >= coin5.y - 35/2 && trix1.y - trix1.size/2 <= coin5.y + 35/2) //COLLISION Y
      {
        count+=1;
        grab5 = true;
      }
    }
  }
}