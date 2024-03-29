class Map{
  int mapWidth = 200;
  int mapHeight = 200;
  int[][] map = new int[mapWidth][mapHeight];
  int putBlockInTheMapId = 1;
  int highlightedX = -1;
  int highlightedY = -1;
  
  public Map(int w, int h){
    this.mapWidth = w;
    this.mapHeight = h;
  }

  void generate() {
    for (int x = 0; x < mapWidth; x++) {
      for (int y = 0; y < mapHeight; y++) {
        float n = noise(x * 0.1, y * 0.1);
        if (n < 0.4) {
          map[x][y] = 1; // green block
        } else if (n < 0.7) {
          map[x][y] = 2; // yellow block
        } else {
          map[x][y] = 3; // blue block
        }
      }
    }
  }
  
void draw() {
  float startX = max(0, camera.x / block.size);
  float endX = min(mapWidth, (camera.x + width) / block.size + 1);
  float startY = max(0, camera.y / block.size);
  float endY = min(mapHeight, (camera.y + height) / block.size + 1);

  for (int x = int(startX); x < endX; x++) {
    for (int y = int(startY); y < endY; y++) {
      block.drawBlock(map[x][y], x, y);
      
      if (x == highlightedX && y == highlightedY) {
        fill(255, 255, 255, 100); // Полупрозрачный белый цвет
        rect(x * block.size - camera.x, y * block.size - camera.y, block.size, block.size);
      }
    }
  }
}

  void updateHighlightedBlock() {
    int xIndex = int((mouseX + camera.x) / block.size);
    int yIndex = int((mouseY + camera.y) / block.size);

    if (xIndex >= 0 && xIndex < mapWidth && yIndex >= 0 && yIndex < mapHeight) {
      highlightedX = xIndex;
      highlightedY = yIndex;
    } else {
      highlightedX = -1;
      highlightedY = -1;
    }
  }
  
  void putBlockOnTheMap(){
     if(mousePressed){
       int xIndex = int((mouseX + camera.x) / block.size);
       int yIndex = int((mouseY + camera.y) / block.size);
      
       if (xIndex >= 0 && xIndex < mapClass.mapWidth && yIndex >= 0 && yIndex < mapClass.mapHeight) {
         mapClass.map[xIndex][yIndex] = putBlockInTheMapId;
       } 
     }
  }


}
