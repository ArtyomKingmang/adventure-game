/*
Public instances of classes whose methods can be called from any class
*/
Map mapClass;
Player player;
Camera camera;
Block block;
Inventory inventory;


void setup() {
  fullScreen();

  initClasses();
  player.init();
  mapClass.generate();
  player.x = width / 2;
  player.y = height / 2;
}

void draw() {
  background(100,100,200);
  ////////////////////camera//////////////////////
  camera.update();
  
  ///////////////////draw map////////////////////
  mapClass.draw();
  
  ////////////////////player/////////////////////
  player.move();
  player.update();
  noTint();
  
  
  //////////additional map features//////////////
  mapClass.updateHighlightedBlock();
  mapClass.putBlockOnTheMap();
  
  inventory.draw(0,0);
  if (inventory.selected >= 0) {
    image(inventory.items[inventory.selected].image, mouseX-25, mouseY-25, 30, 30);
  }
  
}


void initClasses(){
  inventory = new Inventory();
  block = new Block();
  camera = new Camera(); 
  player = new Player();
  mapClass = new Map(200,200);
}
