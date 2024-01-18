PImage player;

void keyPressed(){
   if(key == 'w')key_w = true;
   if(key == 'a')key_a = true;
   if(key == 's')key_s = true;
   if(key == 'd')key_d = true;
}

void keyReleased(){
   if(key == 'w')key_w = false;
   if(key == 'a')key_a = false;
   if(key == 's')key_s = false;
   if(key == 'd')key_d = false;
}

void movement(){
   if(key_w) PlayerY -= SpeedY;
   if(key_s) PlayerY += SpeedY;
   if(key_a) PlayerX -= SpeedX;
   if(key_d) PlayerX += SpeedX;
   
   fill(0);
   image(player, PlayerX,PlayerY,PlayerWidth + 10,PlayerHeight + 20);
}
