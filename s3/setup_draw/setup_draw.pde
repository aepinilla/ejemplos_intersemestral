// Inicializamos la variable para la posición en X
int posX;
int posY;
int speedX = 1;
int speedY = 1;

void setup() {
  size(800, 500);
}

void draw() {
  background(255);
  posX = posX + speedX;
  
  // condicion1    OR condicion2
  if(posX >= width || posX <= 0) {
    speedX = speedX * -1;
  }
  
  if(posY >= height || posY <= 0) {
    speedY = speedY * -1;
  }

  fill(20, 150, 200);
  noStroke();
  ellipse(posX, 150, 50, 50);
  
}
