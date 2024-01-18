int[] items = {0, 1, 2, 3, 4};
int selected = 0;

void inventar(){
   if(keyPressed){
       /*if(keyCode == RIGHT){
          selected = (selected + 1) % items.length; 
       }
       else if(keyCode == LEFT){
          selected = (selected - 1 + items.length) % items.length;
       }*/
       if(key == '0')selected = items[0];
       if(key == '1')selected = items[1];
       if(key == '2')selected = items[2];
       if(key == '3')selected = items[3];
       if(key == '4')selected = items[4];
       
   }
}
