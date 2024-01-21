//screen size
final int WIDTH = 750;
final int HEIGHT = 810;

/*
id 0 : grass
id 1 : water 
id 2 : sand
id 3 : land
other id : emptyColor
*/



Block block;
Map mapClass;


//maps
public int[][] map = new int[30][30];
boolean[][] flowerMap;


PImage item;

//blocks
int BlockWidth = WIDTH/map[1].length;
int BlockHeight = HEIGHT/map.length;



//player
PImage playerImage;
PImage playerFrame1;
PImage playerFrame2;

int SpeedPlayerX = 10;
int SpeedPlayerY = 10;
int PlayerX = 10;
int PlayerY = 10;
int PlayerWidth = BlockWidth;
int PlayerHeight = BlockHeight;


PImage flowerImage;

//movement
boolean key_w, key_a, key_s, key_d;


void settings(){
   size(WIDTH, HEIGHT);   
}

void initClasses(){
  mapClass = new Map();
  flowerMap = mapClass.generateFlowerMap();
  block = new Block();
}

void initImages(){
  flowerImage = loadImage("flower.png");
  playerImage = loadImage("emptyPlayer.png");

  item = loadImage("emptyItem.png");
  bucket = loadImage("bucket.png");
  hoe = loadImage("hoe.png"); 
}

void fillPlayerFrames(){
  playerFrame1 = loadImage("player1.png");
  playerFrame2 = loadImage("player2.png");
   /*for(int i = 1; i<2; i++){
       playerImageFrames[i] = loadImage("player"+i+".png");
   }  */
}
void setup(){
  fillPlayerFrames();
  initClasses();
  initImages();
  noStroke(); 
}


void draw(){
  background(255);
  playerImage = playerFrame2;
  mapClass.drawMap();
  movement();

  inventar();
  mapClass.putBlockInTheMap();
  fill(255);
  textSize(30);
  text(frameRate,WIDTH-60,50);
 
}
