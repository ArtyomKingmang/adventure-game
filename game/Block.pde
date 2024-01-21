class Block{
  color grassColor = color(100, 200, 100);
  color waterColor = color(#4240D3);
  color sandColor = color(252, 188, 114);
  color land = color(137, 93, 66);
  
  void fillSand(){
     fill(sandColor); 
     
  }
  void fillLand(){
    fill(land);  
  }
  void fillGrass(){
     fill(grassColor); 
  }
   
  void fillWater(){
     fill(waterColor); 
  }
  void drawBlock(int j, int i){
    rect(j * PlayerWidth, i * BlockHeight, PlayerWidth, BlockHeight); 
  }
  
}
