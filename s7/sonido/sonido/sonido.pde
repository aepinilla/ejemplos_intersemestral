// Importar la librearía Sound
import processing.sound.*;
import processing.sound.FFT;

SoundFile soundfile;
FFT fft;

int timeLapsed;

// Número de bandas de frecuencia
int bands = 256;

// Array para guardar el espectro de nuestras frecuencias
float[] spectrum = new float[bands];

int x = 0;
int y = 70;

float radio;

void setup() {
  size(1000, 1000);
  background(0);
  frameRate(1);
  
  // Importar la canción
  soundfile = new SoundFile(this, "asereje.mp3");
  
  // Crear el analizador de frecuencias
  fft = new FFT(this, bands);
  
  // Analice la canción
  fft.input(soundfile);
  
  // Reproducir la canción
  soundfile.play();
}

void draw() {
  timeLapsed++;
  println(timeLapsed);
  
  fft.analyze(spectrum);
  
  //float randomFreq = random(255);
  float level = spectrum[50] * 100; //<>//
  radio = (level * width);
  
  if(timeLapsed < 10) {
    fill(255, 30);
    stroke(random(0, 100), random(100, 255), random(200, 255));
    ellipse(x, y, radio, radio);
  } else if (timeLapsed > 10 || timeLapsed < 20) {
    fill(255, 30);
    triangle(x, y, radio, radio, x*2, y*2);
  }
  
  x += 10;

  // Controlar el dibujo en el eje vertical
  if (x > width) {
    x = 0;
    y = y + 10;
  }

  // Controlar el dibujo en el eje horizontal
  if (y > height) {
    y = 70;
    background(0);
  }
}
