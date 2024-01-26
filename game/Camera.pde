class Camera{
 float x, y;
  void update() {
    float targetX = player.x - width/2;
    float targetY = player.y - height/2;
    
    x += (targetX - x) * 0.1;
    y += (targetY - y) * 0.1;
  }
 
}
