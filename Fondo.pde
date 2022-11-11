class FondoN {
  //añadir campos
  int ancho, alto;
  float x, y;
  String pantalla;
  PImage fondo = loadImage ("fondo.png");
  PImage personaje = loadImage ("personaje.jpg");
  // PFont fuenteNueva01= loadFont ("titulo01.vlw");

  //constructor
  FondoN () {
    ancho = 600;
    alto = 400;
    x = 0;
    y= 0;
    //pantalla: Estado
    pantalla = "inicio";
  }

  void draw () {
    //PRIMERA PANTALLA (INICIO)
    if (pantalla.equals("instrucciones")) {
      image(personaje, 50, 50);
    }
  }

  //crear metodo
  void titulo () {
    image(fondo, x, y, ancho, alto);
    //textFont(fuenteNueva01);
    textSize(26);
    fill(255, 223, 43);
    textAlign(CENTER);
    text ("Conejito saltarín", 300, 40);
  }

  void mousePressed() {
    //evento que cambia de inicio a instrucciones
    if (pantalla.equals("inicio") &&(mouseX>x )&& (mouseX<x + ancho) && (mouseY>y) && (mouseY < y+alto) ) {
      pantalla = "instrucciones";
    } else if (pantalla.equals("instrucciones") &&(mouseX>x )&& (mouseX<x + ancho) && (mouseY>y) && (mouseY < y+alto)) {
      pantalla = "jugando";
    }
  }
}
