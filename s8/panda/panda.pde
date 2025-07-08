PImage panda;

void setup() {
  size(1000, 1000);
  panda = loadImage("panda.jpg");
  panda.loadPixels();
}

void draw() {
  image(panda, 0, 0);
}
