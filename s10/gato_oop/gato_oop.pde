Gato miGato;

void setup() {
  size(1000, 1000);
  miGato = new Gato(color(255, 100, 50), width/2, height/2, 10);
}

void draw() {
  background(255);
  
  miGato.display();
  miGato.correr();
}

class Gato {
  // Propiedades
  color c;
  float posX;
  float posY;
  float velocidad;

  // Constructor
  Gato(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }

  // Métodos
  void display() {
    fill(c);
    noStroke();
    rect(posX, posY, 100, 100);
  }

  void correr() {
    // Tome la posición en X y sumele la velocidad.
    // Si la posición en X llega al máximo de la pantalla, vuelva al inicio (posX = 0).
  }
}
