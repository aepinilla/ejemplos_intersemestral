// Importar la librearía Sound //<>//
import processing.sound.*;
import processing.sound.FFT;

SoundFile soundfile;
FFT fft;

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
  frameRate(60);

  // Importar la canción
  soundfile = new SoundFile(this, "time.mp3");

  // Crear el analizador de frecuencias
  fft = new FFT(this, bands);

  // Analice la canción
  fft.input(soundfile);

  // Reproducir la canción
  soundfile.play();
}

void draw() {

  fft.analyze(spectrum);

  //float randomFreq = random(255);
  float level = spectrum[50] * 100;
  radio = (level * width);


  fill(255, 30);
  stroke(random(0, 100), random(100, 255), random(200, 255));
  ellipse(x, y, radio, radio);


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
