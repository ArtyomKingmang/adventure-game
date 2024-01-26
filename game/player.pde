class Player{
  int x, y;
  
  float speed = 6.0;
  int WIDTH = block.size;
  int HEIGHT = block.size + 20;
  PImage emptyPlayer;
  PImage player1;
  PImage player2;
  int imgChecker;
  void init(){
    x = mapClass.map[30][90];
    y = mapClass.map[90][30];
    emptyPlayer = loadImage("trans.png");
    player1 = loadImage("player1.png");
    player2 = loadImage("player2.png");
  }
  
  void update() {
    if(imgChecker == 0) emptyPlayer = player1;
    if(imgChecker == 1) emptyPlayer = player2;
    fill(255, 0, 0);
    image(emptyPlayer, x - camera.x, y - camera.y, WIDTH, HEIGHT);
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
       imgChecker = 1;     
     }
     if(key_d){
       movePlayer(speed, 0);
       imgChecker = 0;
   }
  }
  
  void movePlayer(float dx, float dy) {
    int newX = x + int(dx);
    int newY = y + int(dy);
    
    if (newX >= 0 && newX < mapClass.mapWidth * block.size && newY >= 0 && newY < mapClass.mapHeight * block.size) {
      x = newX;
      y = newY;
    }
  }
  
}
