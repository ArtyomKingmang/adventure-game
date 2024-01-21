
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
    int playerCellX = PlayerX / BlockWidth;
    int playerCellY = PlayerY / BlockHeight;
    try{
      if (map[playerCellY][playerCellX] == 1) {
        tint(100,100,200);
        // Если игрок касается блока с id 1 (вода), замедляем его скорость
        SpeedPlayerX = 3; // Например, уменьшаем скорость по горизонтали
        SpeedPlayerY = 3; // И скорость по вертикали
      } else {
        tint(255,255);
        // Возвращаем обычную скорость, если игрок не касается блока воды
        SpeedPlayerX = 10;
        SpeedPlayerY = 10;
      }
    }catch(ArrayIndexOutOfBoundsException e){
       println("ArrayIndexOutOfBoundsException");
    }
     if(key_w) PlayerY -= SpeedPlayerY;
     if(key_s) PlayerY += SpeedPlayerY;
     if(key_a) {
       playerImage = playerFrame2;
       PlayerX -= SpeedPlayerX;
     }
     if(key_d) {
       playerImage = playerFrame1; 
       PlayerX += SpeedPlayerX;
     }
     fill(0);
     image(playerImage, PlayerX,PlayerY,PlayerWidth + 10,PlayerHeight + 20);
     noTint();
  }
  
