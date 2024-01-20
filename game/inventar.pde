/*
0 : рука
1 : мотыга
*/
int[] items = {0, 1};
int selected = 0;
int checker;

void inventar(){
   if(keyPressed){
       /*if(keyCode == RIGHT){
          selected = (selected + 1) % items.length; 
       }
       else if(keyCode == LEFT){
          selected = (selected - 1 + items.length) % items.length;
       }*/
       
       if(key == '0')selected = items[0];
       if(key == '1'){
         selected = items[1];
         checker = 1;
         //rect(PlayerWidth + 50, PlayerHeight + 40, PlayerWidth - 60, PlayerHeight - 60);
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
      fill(0);
      rect(mouseX-25,mouseY-25,20,20); 
    }
  
}
