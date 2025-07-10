PImage img; //<>//
int index = 0;

void setup() {
  size(1000, 1000);
}

void draw() {
  loadImageEvent(index);
}

void mousePressed() {
  // Incrementar en una unidad el valor de index, cuando el mouse se presiona.
  index++;
  loadImageEvent(index);  
  println(index);
}

void loadImageEvent(int i) {
  switch(i) {
  case 0:
    println("Evento 0");
    img = loadImage("inicio.jpg");
    break;
  case 1:
    println("Evento 1");
    img = loadImage("climax.jpg");
    break;
  case 2:
    println("Evento 2");
    img = loadImage("desenlace.jpg");
    break;
  case 3:
    println("Evento 3");
    index = 0;
    break;
  }
  
  image(img, 0, 0, width, height);
}
