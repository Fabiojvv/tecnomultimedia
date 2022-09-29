/*
 VIDEO DE YOUTUBE
 https://youtu.be/7b3cmQIaaBI
 
 
 Veracierta Valera Fabiola José
 legajo: 91399/1
 */



//musica de fondo
import ddf.minim.*;
Minim minim;
AudioPlayer player;

//llamar class
FondoN inicio;

void setup () {
  size ( 400, 600);
  //musica
  minim = new Minim (this);
  player = minim.loadFile("audio.wav");

  //fondo
  inicio = new FondoN();
}

void draw() {
  //musica
  player.play();

  //truco para ubicar coordenadas
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);

  //llamar método
  inicio.titulo();
  inicio.draw();
}
