// https://youtu.be/uEBcCXqmy-0
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

float distancia;

PImage treinta;

void setup() {
  size(800, 400);

  treinta = loadImage("32.png");

  background(255);
  noStroke();
}

void draw() {

  background(255);

  image(treinta, 0, 0, 400, 400);

  fill(0);
  rect(400, 0, 400, 400);


  if (enMovimiento) {

    // Distancia entre mouse y centro
    distancia = dist(mouseX, mouseY, centroX, centroY);
   // Tamaño del dibujo 
    tamanoDibujo = int(map(distancia, 0, 400, 250, 400));

    // map controla la rotación
    anguloRotacion = map(mouseX, 0, width, 0, PI/4);

  } else {

    // Estado original
    anguloRotacion = 0;
    tamanoDibujo = 400;

  }


  pushMatrix();

  translate(centroX, centroY);

  dibujarIlusion(tamanoDibujo);

  popMatrix();
}


// Interacción con el mouse
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
    tamanoDibujo = 400;

    enMovimiento = false;

  }

}


// Función que retorna un color aleatorio
color generarColorAleatorio(color colorBase) {

  float r = random(255);
  float g = random(255);
  float b = random(255);

  return color(r, g, b);

}


// Función que dibuja la ilusión
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
