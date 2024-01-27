class Player{
  int x, y;
  int cutIndex = 1;
  float speed = 6.0;
  int WIDTH = block.size;
  int HEIGHT = block.size + 20;
  PImage emptyPlayer;
  PImage player;
  boolean FlipChecker;
  void init(){
    emptyPlayer = loadImage("player1.png");
    
    //player2 = loadImage("player2.png");
  }
  
  void update() {
    player = flipPlayer(emptyPlayer, FlipChecker);
    fill(255, 0, 0);
    image(player, x - camera.x, y - camera.y, WIDTH, HEIGHT/cutIndex, 0, 0, player.width, player.height/cutIndex);
  }
  
  public int getX(){
     return x; 
  }
  
  public int getY(){
     return y; 
  }
  
  void move(){
     if(key_w) movePlayer(0, -speed);
     if(key_s) movePlayer(0, speed);
     if(key_a) {
       movePlayer(-speed, 0);  
       FlipChecker = true;
     }
     if(key_d){
       movePlayer(speed, 0);
       FlipChecker = false;
     }
  }
  
   void movePlayer(float dx, float dy) {
      int newX = x + int(dx);
      int newY = y + int(dy);
      
      // Проверяем, не находится ли персонаж на блоке воды
      int mapX = int(newX / block.size);
      int mapY = int(newY / block.size);
      if (mapX >= 0 && mapX < mapClass.mapWidth && mapY >= 0 && mapY < mapClass.mapHeight) {
        if (mapClass.map[mapX][mapY] == 3) { // Если блок - вода
          tint(100,100,200);
          cutIndex = 2;
          speed = 3.0; // Устанавливаем меньшую скорость
        } else {
          tint(255);
          cutIndex = 1;
          speed = 6.0; // Возвращаем обычную скорость
        }
      }
      
      if (newX >= 0 && newX < mapClass.mapWidth * block.size && newY >= 0 && newY < mapClass.mapHeight * block.size) {
        x = newX;
        y = newY;
      }
    }
    
    PImage flipPlayer(PImage img, boolean doFlip) {
      PImage flippedImg = createImage(img.width, img.height, ARGB);
      flippedImg.loadPixels();
      img.loadPixels();
      
      for (int y = 0; y < img.height; y++) {
        for (int x = 0; x < img.width; x++) {
          int srcX = x;
          if (doFlip) {
            srcX = img.width - x - 1;
          }
          int srcColor = img.pixels[y * img.width + srcX];
          flippedImg.pixels[y * img.width + x] = srcColor;
        }
      }
      
      flippedImg.updatePixels();
      return flippedImg;
    }
  
}
