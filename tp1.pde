import ddf.minim.*;

Minim minim;
AudioPlayer player;

PImage fondo, inicio, youtube;
PFont texto, titulo; 
float posX, posY, tamT, tamt, seg;
boolean enPantalla;

void setup () {
  size (630, 270); //tamaño de la imgenes de adentro (630, 270) relacion 21:9 
  textAlign(CENTER, CENTER);
  minim = new Minim (this);
player = minim.loadFile("audio.wav");
  inicio = loadImage ("inicio.png");
  fondo = loadImage ("fondo.png");
  youtube = loadImage ("youtube.png");
  seg= 6000;
  posX = 198;
  posY = 130;
  tamT = 15;
  tamt =10;
  texto = loadFont ("texto.vlw");
  titulo = loadFont ("titulo.vlw");
  background(inicio);
}
void draw() {
  
  if ( enPantalla) { //dibujar en la pantalla de los creditos sin que afecte el resto de la imagen
    point(mouseX, mouseY);
  }
player.play();
  
    frameRate (20);
     
   /*
 mouseX>=43
 mouseX<350
 mouseY>=40
 mouseY<37 + 160
  */
 
  enPantalla= ( mouseX>=43 &&  mouseY>=40 &&    mouseX<350 && mouseY<37 + 160);
  println (enPantalla);

  frameRate (frameCount*2);
  println(frameCount);
  if (frameCount ==seg) {
    background (fondo);
  } 
  if (frameCount ==seg+100) {
    background (fondo);
    textFont(titulo);
    text("PRODUCTION SERVICES BY", posX, posY, tamT);
  } 
  if (frameCount ==seg*2) {
    background (fondo);
    textFont(texto);
    text("Elliott Animation Inc.", posX, posY, tamT);
  }
  if (frameCount ==seg*2+1000) {
    background (fondo);
    textFont(titulo);
    text("SUPERVISING PRODUCER", posX, posY, tamT);
  }
  if (frameCount ==seg*2+2000) {
    background (fondo);
    textFont(texto);
    text("George Elliott", posX, posY, tamT);
  }
  if (frameCount ==seg*2 +3000) {
    background (fondo);
    textFont(titulo);
    text(" DIRECTED BY", posX, posY, tamT);
  }
  if (frameCount ==seg*2+4000) {
    background (fondo);
    textFont(texto);
    text("Todd Kauffman", posX, posY, tamT);
    text("Mark Thornton", posX, posY+25, tamT);
  }
 
}
void mousePressed () { //paso 1 : cambiar fondo
  background(fondo);
 
}

void keyPressed () { //paso 2 : iniciar creditos
  if  (frameCount <4000) {
    textFont(titulo);
    text("A FRESH TV INC.PRODUCTION", posX, posY, tamT);
  }
   image (youtube, random (width), random (height), 10, 10);
}
