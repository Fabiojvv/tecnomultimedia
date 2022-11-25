/*
VIDEO DE YOUTUBE
 https://www.youtube.com/watch?v=jNWcJXQ8Gkc
 
 Veracierta Valera Fabiola José
 legajo: 91399/1
 */


Principal juego;

//COMUNICACION ENTRE OBJETOS 
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
  //musica
  minim = new Minim (this);
  player = minim.loadFile("audio.wav");
  size (600, 400);
  juego = new Principal();
}
void draw () {
  player.play();
  juego.dibujar();

  if (keyPressed) {
    juego.MovimientoConejo(keyCode);
  }
}

void mousePressed() {
  juego.TocoBoton ();
}
