PImage Imagen;
void setup(){
size(800, 400);
Imagen = loadImage("progimg.jpg");
}
void draw(){

// atras
fill(127, 227, 255);
 quad(400, 0, 399, 350, 620, 258, 727, 0);
 
 fill(24, 63, 180);
 beginShape();
   vertex(400, 347);
   vertex(620, 260);
   vertex(799, 337);
   vertex(799, 397);
   vertex(401, 398);
  endShape();

 
  
  
   // piso 
   fill(130, 216, 243);
  quad(675, 125, 799, 115, 799, 337, 618, 259);
  
  fill(33, 200, 245);
  quad(400, 397, 639, 268, 660, 278, 519, 398);
  
  fill(130, 216, 243);
  quad(661, 278, 681, 287, 619, 398, 520, 399);
  
  fill(33, 200, 245);
  quad(682, 287, 708, 299, 684, 399, 619, 398);
  
  fill(130, 216, 243);
  quad(708, 299, 740, 313, 749, 397, 684, 396);
  
  fill(33, 200, 245);
  quad(740, 313, 749, 397, 794, 397, 775, 328);
  
  fill(130, 216, 243);
  quad(775, 327, 799, 337, 799, 396, 793, 398);
  
  fill(33, 200, 245);
  quad(398, 348, 617, 259, 638, 268, 402, 399);


// Parte de arriba
  fill(37, 168, 233);
  quad(442, 38, 489, 100, 506, 101, 481, 40);
  
  fill(30, 99, 197);
  quad(442, 38, 489, 100, 482, 107, 441, 63);
  
  fill(30, 99, 197);
  quad(482, 88, 485, 86, 460, 46, 454, 45);
  
  quad(490, 87, 494, 86, 476, 46, 470, 45);
  
// tronco
fill(28, 179, 235);
  beginShape();
    vertex(489, 101);
    vertex(505, 101);
    vertex(546, 212);
    vertex(533, 209);
    vertex(521, 216);
  endShape();
 fill(31, 113, 209); 
 quad(489, 100, 482, 108, 506, 214, 521, 216);
 
// lineas
  
  line(492, 110, 508, 108);
  
  line(494, 118, 511, 116);
  
  line(495, 125, 513, 123);
  
  line(497, 130, 515, 130);
  
  line(498, 137, 518, 135);
  
  line(501, 143, 520, 143);
  
  line(503, 150, 523, 148);
  
  line(504, 156, 525, 156);
  
  line(507, 162, 527, 161);
  
  line(508, 170, 530, 168);
  
  line(510, 177, 532, 174);
  
  line(512, 184, 534, 182);
  
  line(516, 193, 538, 191);
  
  line(516, 201, 541, 199);
  
  line(519, 207, 542, 205);
  

 
// cuerpo
fill(31, 132, 224);
  beginShape();
    vertex(532, 209);
    vertex(480, 247);
    vertex(512, 289);
    vertex(513, 349);
    vertex(561, 375);
    vertex(627, 358);
    vertex(636, 310);
    vertex(585, 270);
    vertex(580, 219);
    vertex(532, 209);
  endShape();
  
 fill(22, 61, 178); 
  beginShape();
    vertex(523, 216);
    vertex(506, 216);
    vertex(470, 233);
    vertex(448, 260);
    vertex(480, 248);
  endShape();
  
  
  fill(22, 61, 178);
  quad(448, 261, 479, 248, 513, 291, 489, 297);
  
  quad(489, 298, 513, 290, 512, 348, 472, 360);
  
  quad(472, 360, 513, 349, 559, 375, 525, 378);
  
  
 fill(22, 61, 178); 
  beginShape();
    vertex(527, 286);
    vertex(540, 269);
    vertex(565, 267);
    vertex(580, 282); 
    vertex(576, 300);
    vertex(549, 307);
    vertex(527, 286);
  endShape(); 
  
  quad(537, 335, 611, 318, 611, 330, 552, 347);
  
  
  //sombra
  fill(27, 153, 211, 127);
    beginShape();
       vertex(442, 39);
       vertex(422, 79);
       vertex(425, 103);
       vertex(400, 151);
       vertex(400, 396);
       vertex(527, 378);
       vertex(472, 360);
       vertex(481, 331);
       vertex(464, 322);
       vertex(466, 277);
       vertex(448, 261);
       vertex(458, 247);
       vertex(417, 235);
       vertex(457, 83);
       vertex(441, 65);
       vertex(442, 39);
  endShape();
  
  
  // fondo mar  
  fill(33, 178, 247);
  quad(676, 123, 800, 115, 797, 0, 728, 0);
  
  fill(#1421A7);
  quad(676, 123, 617, 259, 800, 337,  800, 115 );
tint(255, 78);
 image(Imagen, 0, 0, 400, 400);
}

void mousePressed(){
  println(mouseX, mouseY);
}
