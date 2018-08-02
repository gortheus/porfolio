void approach() {
  if ( (dist (player.x, player.y, enemy.x, enemy.y) <= player.r + enemy.r + 100 ) && (player.moveUp == true)) {
    enemy.moveUp = true;
  } else { 
    enemy.moveUp = false;
  }
  
   if ( (dist (player.x, player.y, enemy.x, enemy.y) <= player.r + enemy.r + 100 ) && (player.moveDown == true)) {
    enemy.moveDown = true;
  } else { 
    enemy.moveDown = false;
  }
  
   if ( (dist (player.x, player.y, enemy.x, enemy.y) <= player.r + enemy.r + 100 ) && (player.moveLeft == true)) {
    enemy.moveLeft = true;
  } else { 
    enemy.moveLeft = false;
  }
  
  if ( (dist (player.x, player.y, enemy.x, enemy.y) <= player.r + enemy.r + 100 ) && (player.moveRight == true)) {
    enemy.moveRight = true;
  } else { 
    enemy.moveRight = false;
  }
}