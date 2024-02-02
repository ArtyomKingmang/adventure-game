class Item {
  PImage image;
  int type;

  Item(PImage img, int t) {
    image = img;
    type = t;
  }
}

class Inventory {
  Item[] items;
  int selected = 0;

  Inventory() {
    items = new Item[2];
    items[0] = new Item(loadImage("bucket.png"), 0);
    items[1] = new Item(loadImage("hoe.png"), 1);
  }

  void draw(float x, float y) {
    float itemX = x;
    float itemY = y;
    for (int i = 0; i < items.length; i++) {
      if (i == selected) {
        fill(255);
        rect(itemX - 5, itemY - 5, 40, 40);
      }
      image(items[i].image, itemX, itemY, 30, 30);
      itemX += 40; 
    }
    
    
  }

  void selectItem(int index) {
    if (index >= 0 && index < items.length) {
      selected = index;
    }
  }
}
