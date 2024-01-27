boolean key_w, key_s, key_a, key_d;

void keyReleased(){
  if(key == 'w') key_w = false;
  if(key == 's') key_s = false;
  if(key == 'a') key_a = false;
  if(key == 'd') key_d = false;
}
void keyPressed() {
  if(key == 'w') key_w = true;
  if(key == 's') key_s = true;
  if(key == 'a') key_a = true;
  if(key == 'd') key_d = true;
  
  if (keyCode == RIGHT) {
    inventory.selectItem((inventory.selected + 1) % inventory.items.length); // Переход к следующему элементу
  } else if (keyCode == LEFT) {
    inventory.selectItem((inventory.selected - 1 + inventory.items.length) % inventory.items.length); // Переход к предыдущему элементу
  }
}
