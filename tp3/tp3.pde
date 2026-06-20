//https://youtu.be/snbxgrkR_U0
// Variables
int anchoMesa = 800;
int altoMesa = 400;

int centroX = 600;
int centroY = 200;

int cantidadCuadrados = 10; 

int tamanoDibujo = 400;

color colorPersonalizadoA = color(0); 
color colorPersonalizadoB = color(255); 

float anguloRotacion = 0;
boolean enMovimiento = true;

int tamanoActual;
int mitadTamano;

color colorA;
color colorB;
void setup() {
  size(800, 400); 
  background(255); 
  noStroke(); 
}

void draw() {
  background(255); 
  
  fill(0); 
  rect(400, 0, 400, 400); 
// para poder filtrar si quiero que vuelva a la normalidadr
  if (enMovimiento == true) {
    anguloRotacion = mouseX * 0.001;
  }

  pushMatrix();
  translate(centroX, centroY);
  
  dibujarIlusion(tamanoDibujo);
  
  popMatrix();
}
//Interaccion con el mouse
void mouseClicked() {
  colorPersonalizadoA = generarColorAleatorio(colorPersonalizadoA);
  colorPersonalizadoB = generarColorAleatorio(colorPersonalizadoB);
  enMovimiento = true;
}

void mouseMoved() {
  enMovimiento = true;
}
// Volver a la normalidad
void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorPersonalizadoA = color(0);
    colorPersonalizadoB = color(255);
    anguloRotacion = 0;
    enMovimiento = false;
  }
}

color generarColorAleatorio(color colorBase) {
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  
  return color(r, g, b);
}

void dibujarIlusion(int tam) {
  for (int i = 0; i < cantidadCuadrados; i++) {
    
    tamanoActual = tam - (i * (tam / cantidadCuadrados));
    mitadTamano = tamanoActual / 2;

    pushMatrix();
    rotate(anguloRotacion * (i + 1));

    for (int j = 0; j < 2; j++) {
      

      if ((i + j) % 2 == 0) {
        colorA = colorPersonalizadoA;
        colorB = colorPersonalizadoB;
      } else {
        colorA = colorPersonalizadoB;
        colorB = colorPersonalizadoA;
      }

      fill(colorA); 
      rect(-mitadTamano, -mitadTamano, mitadTamano, mitadTamano); 

      fill(colorB); 
      rect(0, -mitadTamano, mitadTamano, mitadTamano); 

      fill(colorB); 
      rect(-mitadTamano, 0, mitadTamano, mitadTamano); 

      fill(colorA); 
      rect(0, 0, mitadTamano, mitadTamano); 
    }
    
    popMatrix();
  }
}
