void backmusique()
{
  if (key=='w' || key == 'W')
  {
    player.pause();
    player = audioSystem.loadFile("rick.mp3");
    if (player.isPlaying() ) {
      player.pause();
      player.rewind();
    }
    if (player.isPlaying()==false) {
      player.loop();
    }
    player.loop();
  }
  if (key=='q' || key=='Q')
  { 

    player.pause();
    player = audioSystem.loadFile("perfume.mp3");
    if (player.isPlaying() ) {
      player.pause();
      player.rewind();
    }
    if (player.isPlaying()==false) {
      player.loop();
    }
  }
  if (key=='e' || key=='E')
  { 

    player.pause();
    player = audioSystem.loadFile("slush.mp3");
    if (player.isPlaying() ) {
      player.pause();
      player.rewind();
    }
    if (player.isPlaying()==false) {
      player.loop();
    }
  }
}