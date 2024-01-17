//screen size
final int WIDTH = 558;
final int HEIGHT = 560;

/*
id 0 : grass
id 1 : water 
*/

int[][] map = {
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}

};

int SpeedX = 10;
int SpeedY = 10;
boolean key_w, key_a, key_s, key_d;

int BlockWidth = WIDTH/map[1].length;
int BlockHeight = HEIGHT/map.length;
int PlayerX = 10;
int PlayerY = 10;
int PlayerWidth = BlockWidth;
int PlayerHeight = BlockHeight;

void settings(){
   size(WIDTH, HEIGHT);   
}
void setup(){
   noStroke(); 
}
void draw(){
  background(255);
  drawMap();
  movement();
}

void drawMap(){
  for(int i = 0; i<map.length; i++){
     for(int j = 0; j < map[i].length; j++){
       if(map[i][j] == 1){
          fill(100,100,200); 
       }else if(map[i][j] == 0){
          fill(100,200,100); 
       }else{
          fill(255); 
       }
       rect(j * PlayerWidth, i * BlockHeight, PlayerWidth, BlockHeight);
     }
  }
  
}
