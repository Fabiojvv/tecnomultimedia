class FondoN {
  //declarar otras class
  ExplosivosYMoneda bomba01;
  ExplosivosYMoneda bomba02;
  ExplosivosYMoneda bomba03;
  ExplosivosYMoneda bomba04;
  ExplosivosYMoneda moneda;
  Pico pico;
  Boton boton;

  //añadir campos
  int ancho, alto;
  float x, y;
  PImage fondo = loadImage ("fondo.png");
  PFont fuenteNueva01= loadFont ("titulo01.vlw");

  //constructor
  FondoN () {
    ancho = 400;
    alto = 600;
    x = 0;
    y= 0;
    
      //bomba
  bomba01 = new ExplosivosYMoneda (90, 300);
  bomba02 = new ExplosivosYMoneda (244, 305);
  bomba03 = new ExplosivosYMoneda (55, 460);
  bomba04 = new ExplosivosYMoneda (190, 370);
  
  //objeto moneda
  moneda = new ExplosivosYMoneda (300, 350);
  
  //pico
  pico = new Pico (600, 210, 1);
  
  //boton
  boton = new Boton ();
  }
  

void draw (){
   bomba01.ubiBomba ();
  bomba02.ubiBomba ();
  bomba03.ubiBomba ();
  bomba04.ubiBomba ();
  moneda.ubiMoneda ();
  pico. ubiPico ();
  pico. moviPico();
  boton. botonPress();
}

  //crear metodo
  void titulo () {
    image(fondo, x, y, ancho, alto);
    textFont(fuenteNueva01);
    fill(255, 223, 43);
    textAlign(CENTER);
    text ("PESCA", 200, 90);
  }
}
