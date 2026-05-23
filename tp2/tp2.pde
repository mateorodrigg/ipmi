PImage img1, img2, img3, img4, img5, img6, img7, img8;
PFont fuente;
float texto = 0;
float xTexto = -100;
float xTexto2 = 740;
float yTexto=-100;
float posT ;
int contador = 0;
int pantalla = 0;

void setup() {

  size(640, 480);

  // imagenes
  img1 = loadImage("inicio.jpg");
  img2 = loadImage("elprofe.jpg");
  img3= loadImage("casadepapel.jpg");
  img4= loadImage("toma.jpg");
  img5= loadImage("dinero.jpg");
  img6= loadImage("raquel.jpg");
  img7= loadImage("dinero2.jpg");
  img8= loadImage("berlinmuerte.jpg");
  
  //fuente
  fuente = loadFont("Arial-Black-24.vlw");
  
  textFont(fuente);
}

void draw() {

  background(0);

  // inicio
  if (pantalla == 0) {

    image(img1, 0, 0, width, height);

    fill(220, 0, 0);
    rect(220, 380, 200, 70, 20);

    fill(0);
    textSize(25);

    text("INICIAR", 268, 422);
  }

  // pantallas
  else {

  cambio();

    // diapo 1
    if (pantalla == 1) {

      image(img2, 0, 0, width, 400);

      
      fill(0);
      rect(0, 400, 640, 80);

      // texto
      
      texto += 2;
      if (texto > 255) {
        texto = 255;
      }
      fill(255, texto);
      textSize(15);

      text(
      "Un misterioso hombre apodado El Profesor recluta a una banda de ocho \ndelincuentes con habilidades específicas y nombres de ciudades\npara cometer el atraco del siglo.",
  20, 420);
    }else{
      // diapo 2
        if(pantalla == 2){
          image(img3, 0, 0, width, height);
          fill(0, 0, 0, 100);
          rect(0,0, 320, 480);
          fill(255, 255, 255);
          text("Tras reclutar a Tokio, Berlín,\n Nairobi, Río, Denver, Moscú,\n Helsinki y Oslo  \n empieza el objetivo  \n asaltar la Fábrica Nacional \nde Moneda y Timbre en Madrid.\nEl plan no es robar \nel dinero de nadie, \nsino imprimir 2.400 millones \nde euros propios.", xTexto, 70);
          if (xTexto < 40) {
           xTexto += 10;
          }
  }else{
    //diapo 3
    if (pantalla == 3){
       image(img4, 0, 0, width, 400);

      
      fill(0);
      rect(0, 400, 640, 80);

      // texto
      textSize(15);
      fill(255);
      text(
      "Tras entrar exitosamente a la casa de la moneda empieza el plan\n dentro de la fabrica, la toma de rehenes controlada por:\nTokyo, Denver y Berlin",
  20, posT);
 
if (contador <= 120) {
  posT = map(contador, 0, 120, 700, 420);
} else {
  posT = 420;
}
}else{
  // diapo 4
  if (pantalla == 4){
    image(img5, 0, 0, width, 400);

      
      fill(0);
      rect(0, 400, 640, 80);

      // texto
      textSize(15);
      texto += 2;
      if (texto > 255) {
        texto = 255;
      }
      fill(255, texto);
      text(
      "En cambio por otro lado Nairobi, Hellsinski, Moscu, oslo y Rio\nmanejan la fabricacion de dinero",
  20,420);
}else{
  if (pantalla == 5){
          image(img6, 0, 0, width, height);
          fill(0, 0, 0);
          rect(320,0, 640, 480);
          fill(255, 255, 255);
          textSize(16);
          text("La policia se interpone\nante los ladrones\n mandan a su mejor soldado\npara dialogar\ncon el profesor Raquel Murillo\naunque estos 2 ya se conocian de\nantes en una cafeteria que\nse veian, la policia logra\nllevarlos al limite\na los ladrones logrando\nque haya quiebres internos", xTexto2, 70);

          if (xTexto2 > 340) {
           xTexto2 -= 10;
          }
    }else{
      if(pantalla == 6){
        image(img7,0, 70, width, 480);
         if (yTexto < 20){
          yTexto +=1;
           }
        textSize(23);
        text("tras mucho lograron alcanzar la suma de dinero\npero la policia no la iba a dejar facil", 10, yTexto);
        }else{
          if(pantalla == 7){
            image(img8,0,0,width,height);
             texto += 2;
      if (texto > 255) {
        texto = 255;
      }
      fill(255, texto);
            textSize(24);
            text("La policia decide entrar, Berlin se sacrifica\npara que todos puedan escapar\nocasionando su muerte", 10, 370);
 
}else{
  if (pantalla == 8){
    image(img1,0,0, width, height);
    fill(220, 0, 0);
    rect(220, 380, 200, 70, 20);

    fill(0);
    textSize(25);

    text("Reiniciar", 268, 422);
    }
    }
}
}
}
}
}
}
}
}

// clicks
void mouseClicked() {

  // Boton iniciar
  if (pantalla == 0 && mouseX >= 220 && mouseX <= 420 && mouseY >= 380 && mouseY <= 450) {

    pantalla = 1;
    contador = 0;
  }
  // boton reinicio
  if (pantalla == 8 && mouseX >= 220 && mouseX <= 420 && mouseY >= 380 && mouseY <= 450) {

    pantalla = 1;
    contador = 0;
  }
}
void cambio(){
      contador++;

    // cambio
    if (contador >= 360 && pantalla != 8) {
      pantalla++;
      contador = 0;
      texto = 0;
    }
}
// ayuda
void mousePressed() {

  println(mouseX, mouseY);
}
