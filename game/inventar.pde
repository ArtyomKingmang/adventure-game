/*
0 : bucket
1 : hoe
*/
PImage hoe;
PImage bucket;
int[] items = {0, 1, 2};
int selected = 0;
int checker;

void inventar(){
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
      image(bucket,mouseX-25,mouseY-25,20,20); 
    }
    
     if(checker == 2){
      image(hoe,mouseX-25,mouseY-25,20,20); 
    }
    
  
}
