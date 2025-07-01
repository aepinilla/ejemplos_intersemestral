int diametro = 200;
float radio = diametro / 2 ;
float circunferencia = TWO_PI * diametro;

int centroHorizontal;
int centroVertical;

void setup() {
  size(1000, 1000);
  centroHorizontal = width/2;
  centroVertical = height/2;
}

void draw() {
  background(255);
  noStroke();
  
  translate(centroHorizontal, centroVertical);
  noFill();
  
  // Dibujar el diametro
  stroke(0);
  line(-radio, 0, radio, 0);
  
  // Radio
  line(0, 0, 0, radio);
  
  // Círculo
  stroke(100);
  ellipse(0, 0, diametro, diametro);
  
  println(circunferencia);
}
