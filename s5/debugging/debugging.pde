// Definición de una variables
int posX = 0;

// Ejecuta una sola vez
void setup(){
 size(500, 500);
}

// Ejecuta muchas veces
void draw() {
  background(255);
  line(posX, 0, posX, height);
  posX++;
  println(posX);
}
