int size = 200;
float radio;

int centroHorizontal;
int centroVertical;

void setup() {
  size(1000, 1000);
  centroHorizontal = width/2;
  centroVertical = height/2;
}

void draw() {
  background(150, 150, 200);
  noStroke();
  
  float d = dist(mouseX, mouseY, centroHorizontal, centroVertical);
  println(d);

  //rectMode(CENTER);
  //rect(centroHorizontal, centroVertical, size, size);
}
