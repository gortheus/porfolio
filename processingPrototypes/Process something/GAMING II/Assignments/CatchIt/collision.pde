boolean collision = false;
void collision() {
  if ( (dist (player.x, player.y, enemy.x, enemy.y) <= player.r + enemy.r)) {
    collision = true;
  } else { 
    collision = false;
  }

  if ( collision == true) {
    playMusic = false;
    musicPlayer.pause();
    musicPlayer.rewind();
    stage = 2;
  }
}