class Inventar{
  PImage hoe;
  PImage bucket;
  int[] items = {0, 1, 2};
  int selected = 0;
  int checker;
  int itemX;
  int itemY;
  int itemSize = 30;

  void init(){
   
    bucket = loadImage("bucket.png");
    hoe = loadImage("hoe.png"); 
  }
  
  void draw(){
    itemX = mouseX-25;
    itemY = mouseY-25;
    invent();
  }
  
  
  void invent(){
     if(keyPressed){
         if(key == '0'){
           selected = items[0];
           checker = 0;
         }if(key == '1'){
           selected = items[1];
           checker = 1;
           //
         }
         if(key == '2'){
           selected = items[2];
           checker = 2;
         }
         if(key == '3'){
           selected = items[3];
           checker = 3;
         }
         if(key == '4'){
           selected = items[4];
           checker = 4;
         }
     }
     
       if(checker == 1){
        image(bucket,itemX,itemY,itemSize,itemSize); 
      }
      
       if(checker == 2){
        image(hoe,itemX,itemY,itemSize,itemSize); 
      }
      
    
  }
  
}
