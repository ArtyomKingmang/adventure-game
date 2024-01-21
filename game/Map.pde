class Map{

  int emptyColor = 255;
  void drawMap(){
    for(int i = 0; i<map.length; i++){
       for(int j = 0; j < map[i].length; j++){
         if(map[i][j] == 1){
           //fill(water)
            block.fillWater();
         }else if(map[i][j] == 0){
            //fill(grass); 
            block.fillGrass();
         }else if(map[i][j] == 2){
            //fill(sand);    
            block.fillSand();
         }else if(map[i][j] == 3){
            block.fillLand(); 
         }else{
            fill(emptyColor); 
         }
         if(mouseX >= j * BlockWidth && mouseX <= (j + 1) * BlockWidth && mouseY >= i * BlockHeight && mouseY <= (i + 1) * BlockHeight){
              fill(255,255,255,200);
              rect(j * BlockWidth, i * BlockHeight, BlockWidth, BlockHeight); 
              noFill();
         }

           block.drawBlock(j,i);
           
          if(flowerMap[i][j]){
             image(flowerImage, j * BlockWidth, i * BlockHeight, BlockWidth, BlockHeight);
          }
       
       }
    }
  
  }

  void putBlockInTheMap() {
    if (mousePressed) {
      int jIndex = mouseX / BlockWidth;
      int iIndex = mouseY / BlockHeight;
      try {
        if (map[iIndex][jIndex] != 4) {
          if (items[selected] == 1) {
            spreadInDirection(jIndex, iIndex, 0, 0, 1);
          }
          if (items[selected] == 2) {
            map[iIndex][jIndex] = 3;
          }
        }
      } catch (Exception e) {
        println("Array exception");
      }
    }
  }
  
  boolean[][] generateFlowerMap(){
     boolean[][] result = new boolean[map.length][map[0].length];
     for(int i = 0; i < map.length; i++){
        for(int j = 0; j<map[i].length; j++){
            result[i][j] = random(100) < 2;
        }
     }
     return result;
  }
  
  void spreadInDirection(int j, int i, int dx, int dy, int distance) {
    for (int y = i - distance; y <= i + distance; y++) {
      for (int x = j - distance; x <= j + distance; x++) {
        if (x >= 0 && x < map[0].length && y >= 0 && y < map.length && map[y][x] == 0) {
          map[y][x] = 1; 
        } else if (map[y][x] == 3) {
          return;
        }
      }
    }
  }
  
}
