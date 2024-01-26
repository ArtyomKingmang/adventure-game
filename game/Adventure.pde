Map mapClass;
Player player;
Camera camera;
Block block;
Inventar inventar;


void setup() {
  fullScreen();

  initClasses();
  player.init();
  inventar.init();
  mapClass.generate();
  player.x = width / 2;
  player.y = height / 2;
}

void draw() {
  background(100,100,200);
  camera.update();
  mapClass.draw();
  player.move();
  player.update();
  inventar.draw();
  mapClass.updateHighlightedBlock();
  mapClass.putBlockOnTheMap();
  
}


void initClasses(){
  inventar = new Inventar();
  block = new Block();
  camera = new Camera(); 
  player = new Player();
  mapClass = new Map(200,200);
}
