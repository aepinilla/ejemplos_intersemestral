Gato miGato;
Perro miPerro;

void setup() {
  size(1000, 1000);
  miGato = new Gato(color(255, 100, 50), 50, height/2, 1);
  miPerro = new Perro(color(255, 100, 50), 50, height/2, 1);
}

void draw() {
  background(255);

  //miGato.display();
  //miGato.correr();
}

// Clase padre
class Mamifero {
  // Propiedades
  color c;
  float posX;
  float posY;
  float velocidad;

  // Métodos
  void display() {
    fill(c);
    noStroke();
    rect(posX, posY, 100, 100);
  }

  void correr() {
    posX += velocidad;
    if (posX >= width || posX == 0) {
      velocidad = velocidad * -1;
    }
  }
}

// Clases hijo
class Gato extends Mamifero {  
  // Constructor
  Gato(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }
  
  void maullar() {
    println("El gato está maullando");
  }
}

class Perro extends Mamifero {  
  // Constructor
  Perro(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }
  
  void ladrar() {
    println("El perro está ladrando");
  }
}
