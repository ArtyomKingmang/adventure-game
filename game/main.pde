//screen size
final int WIDTH = 558;
final int HEIGHT = 560;

/*
id 0 : grass
id 1 : water 
id 2 : sand
id 3 : land
other id : emptyColor
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

color grass = color(100, 200, 100);
color water = color(100, 100, 200);
color sand = color(252, 188, 114);
color land = color(137, 93, 66);
int emptyColor = 255;
void settings(){
   size(WIDTH, HEIGHT);   
}
void setup(){
  player = loadImage("player.png");
  noStroke(); 
}
void draw(){
  background(255);
  drawMap();
  movement();
  inventar();
}

void drawMap(){
  for(int i = 0; i<map.length; i++){
     for(int j = 0; j < map[i].length; j++){
       if(map[i][j] == 1){
          fill(water); 
       }else if(map[i][j] == 0){
          fill(grass); 
       }else if(map[i][j] == 2){
          fill(sand);    
       }else if(map[i][j] == 3){
         fill(land);  
       }else{
          fill(emptyColor); 
       }
       if(mouseX >= j * BlockWidth && mouseX <= (j + 1) * BlockWidth && mouseY >= i * BlockHeight && mouseY <= (i + 1) * BlockHeight){
          fill(255);
       }
       rect(j * PlayerWidth, i * BlockHeight, PlayerWidth, BlockHeight);
     }
  }
  
}


void mousePressed(){
    int jIndex = mouseX / BlockWidth ;
    int iIndex = mouseY / BlockHeight;
    if(map[iIndex][jIndex] != 4){
        if(items[selected] == 1){
          map[iIndex][jIndex] = 3;
        }
    }
}
