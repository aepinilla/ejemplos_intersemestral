void setup() {
  size(1000, 1000);
  background(255);
}

void draw() {
  // Identificar si la tecla hacia arriba está siendo presionada.
  if (keyPressed == true) {
    // Inicio de la historia
    if(keyCode == UP) {
      println("Evento Inicial");
    }
    
    // Clímax
    if(keyCode == DOWN) {
      println("Clímax");
    }
    
    // Desenlace
    if(keyCode == LEFT) {
      println("Desenlace");
    }
    
  }
}
