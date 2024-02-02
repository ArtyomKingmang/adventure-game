class Block{
  int size = 50;
  PImage grassTexture;
  PImage waterTexture;
  PImage sandTexture;
  
  void initTextures(){
    grassTexture = loadImage("grass.png");
    sandTexture = loadImage("sand.png");
    waterTexture = loadImage("water.png");
  }
 
  void drawBlock(int blockId, int x, int y){
    if (blockId == 1) {
      image(grassTexture, x * size - camera.x, y * size - camera.y, size, size);
    } else if (blockId == 2) {
      image(sandTexture, x * size - camera.x, y * size - camera.y, size, size);
    } else if (blockId == 3) {
      image(waterTexture, x * size - camera.x, y * size - camera.y, size, size);
    }
  }
}
