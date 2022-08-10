/*
VIDEO DE YOUTUBE
 https://youtu.be/8IFNtaR-jco 
 
 
/*
 Veracierta Valera Fabiola José
 legajo: 91399/1
 */


//musica de fondo
import ddf.minim.*;
Minim minim;
AudioPlayer player;

String pantalla;
PFont fuenteNueva2;
float []botonLinea = {181, 232, 35, 15};//{132, 240, 260, 240}; //ubicacion de la linea que será el BOTON de instrucciones

PImage [] nubes = new PImage [4];
int [] posX =  { 100, 50, -40, -200};
int [] posY = { 60, 100, 20, 80, 150};

PImage sky, personajePerro, personajeChico, personajeChica, fondo1, fondo2, fondo3, fondo4, asteroide;
int tiempo;
int n=1;
float a=0;
float b=0;
float n1, n2, n3, n4, n5, n6, n7, n8, n9, c1, c2, c3, c4, c5, h1, h2, h3, h4, h5, h6, h7, h8;
boolean escogePerro, escogeChica, escogeChico;
boolean ganar;
float p1, p2;


void setup() {
  size (400, 400);
  //musica de fondo
  minim = new Minim (this);
  player = minim.loadFile("audio.wav");

  //variable de ubicacion de personaje
  p1= width/3-120;
  p2= height/3+45;

  //booleana de seleccion de personaje
  escogePerro=false;
  escogeChica=false;
  escogeChico=false;
  ganar = false;

  // fondo nubes
  for (int i =0; i < 4; i ++ ) {
    nubes [i] = loadImage("fondo" + i+".png");
  }


  //nubes animadas
  for (int i =0; i < 4; i ++ ) {
    image (nubes [i], posX [i], posY [i], 400, 400);
    if (posX [i] < width) {
      posX [i]++;
    }
    if (posX [i] > width) {
      posX [i] --;
    }
  }



  //imagenes
  sky = loadImage ("sky.png");
  asteroide = loadImage ("asteroide.png");
  personajePerro = loadImage("personajePerro.png");
  personajeChica= loadImage ("personajeChica.png");
  personajeChico= loadImage ("personajeChico.png");

  //Ajustes de texto
  textSize(24);
  textAlign (CENTER, CENTER);

  //carga de nuevas fuente
  fuenteNueva2 = loadFont("cuerpo.vlw");

  //pantalla: Estado
  pantalla = "inicio";
}

void draw () {
  player.play();

  //ganar  
  if (pantalla.equals ("jugando") && (p1+a >340) && (p1+a < 340 + 20)&& (p2+b > 0) && (p2+b < 0 + 400)) {
    pantalla="ganar";
  }
  if (pantalla.equals ("jugando") && (p1+a <0) && (p1+a > 0 + 400)&& (p2+b < 0) && (p2+b >400 + 0)) {
    pantalla="perder";
  }

  println (mouseX, mouseY);
  // funcion sin parametro
  fondo ();
  //PRIMERA PANTALLA (INICIO)

  if (pantalla.equals("inicio")) {

    n++;
    n1=-10+n; 
    n2=100; 
    n3=400; 
    n4=50+n; 
    n5=120; 
    n6=-50+n; 
    n7=140; 
    n8=100+n; 
    n9=160;


    // funcion sin parametro
    fondo ();
    //nubes animadas
    for (int i =0; i < 4; i ++ ) {
      image (nubes [i], posX [i], posY [i], 400, 400);
      if (posX [i] < width) {
        posX [i]++;
      }
      if (posX [i] > width) {
        posX [i] --;
      }
    }

    pushStyle();
    //funcion con parametros :)
    rectangulo (10, 10, 380, 380);
    rectangulo (20, 20, 360, 360);
    popStyle();

    //BOTON 
    smooth(); 
    stroke (100, 154, 206);
    pushStyle();
    if ((mouseX>botonLinea[0] )&& (mouseX<botonLinea[0] + botonLinea[2]) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
      fill(100, 154, 206);
    } else { 
      fill(0);
    }
    rect(botonLinea[0], botonLinea[1], botonLinea[2], botonLinea[3]);
    popStyle();

    //titulo: nombre del juego
    fill(255);
    textFont(fuenteNueva2);
    textSize(10);
    text ("dear sky...", width/2, height/4+50);

    // cuerpo: "start"
    fill(255);
    textFont(fuenteNueva2);
    textSize(10);
    text("start", width/2, height/2+40);
  } 

  //SEGUNDA PANTALLA (INSTRUCCIONES)
  else if (pantalla.equals("instrucciones")) {
    //variables
    c1=width/3-30; 
    c2=height/3+45; 
    c3=45; 
    c4=width/3+40; 
    c5=width/3+107; 



    // funcion sin parametro
    fondo ();
    // fondo nubes
    for (int i =0; i < 4; i ++ ) {
      nubes [i] = loadImage("fondo" + i+".png");
    }

    //texto
    text (pantalla, width/2, height/3-50);
    text ("Utiliza las teclas W,S,A,D para avanzar por el", width/2, height/3-20);
    text ("cielo sin tocar los asteroides antes que el contador llegué a 70", width/2, height/3-10);
    text ("¡suerte!", width/2, height/3+200);
    text ("seleccion de personaje", width/2, height/3+30);

    //imagenes personaje
    image (personajePerro, c1, c2, c3, c3);
    image (personajeChica, c4, c2, c3, c3);
    image (personajeChico, c5, c2, c3, c3);
    // BOTON start
    smooth(); 
    stroke (100, 154, 206);
    strokeCap(ROUND); 
    pushStyle();
    if ((mouseX>botonLinea[0] )&& (mouseX<botonLinea[0] + botonLinea[2]) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
      fill(100, 154, 206);
    } else { 
      fill(0);
    }
    rect(botonLinea[0], botonLinea[1], botonLinea[2], botonLinea[3]);
    popStyle();
    text("start", width/2, height/2+40);

    //escoger personaje - PERRO
    pushStyle();
    if ((mouseX>width/3-30)&& (mouseX<width/3-30 + 45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
      tint(0, 153, 204);
      image (personajePerro, width/3-30, height/3+45, 45, 45);
    } 
    popStyle();

    // escoger personaje - CHICA
    pushStyle();
    if ((mouseX>width/3+40)&& (mouseX<width/3+40 +  45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
      tint(0, 153, 204);
      image (personajeChica, width/3+40, height/3+45, 45, 45);
    } 
    popStyle();

    //escoger personaje - CHICO
    pushStyle();
    if ((mouseX>width/3+107)&& (mouseX<width/3+107 +  45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
      tint(0, 153, 204);
      image (personajeChico, width/3+107, height/3+45, 45, 45);
    } 
    popStyle();
  } 

  //TERCERA PANTALLA (JUEGO)
  else if (pantalla.equals("jugando")) {
    //t+=3;



    // funcion sin parametro
    fondo ();
    //  nubes
    for (int i =0; i < 4; i ++ ) {
      nubes [i] = loadImage("fondo" + i+".png");
    }

    if (escogePerro) {
      image (personajePerro, p1+a, p2+b, 45, 45);
    }
    if (escogeChico) {
      image (personajeChico, p1+a, p2+b, 45, 45);
    }
    if (escogeChica) {
      image (personajeChica, p1+a, p2+b, 45, 45);
    }
    //variables
    h1= height/2-220;
    h2= height/2+190;
    h3=  height/2+280;
    h4= height/2+450;
    h5= height/2+100;
    h6= height/2-200;
    h7= height/2-270;
    h8= height/2-500;

    //funciones con parametros
    asteroide (81, 177, 50, 40);
    asteroide (74, 50, 50, 40);
    asteroide (74, 350, 50, 40);
    asteroide (199, 260, 50, 40);
    asteroide (73, 397, 50, 40);
    asteroide (234, 86, 50, 40);
    asteroide (330, 40, 50, 40);
    asteroide (330, 360, 50, 40);


    //perder al tocar asteroide
    if (dist (p1+a, p2+b, 81, 177)<40) {
      pantalla = "perder";
    }
    if (dist (p1+a, p2+b, 74, 50)<40) {
      pantalla = "perder";
    }
    if (dist (p1+a, p2+b, 74, 350)<40) {
      pantalla = "perder";
    }
    if (dist (p1+a, p2+b, 199, 260)<40) {
      pantalla = "perder";
    }
    if (dist (p1+a, p2+b, 73, 397)<40) {
      pantalla = "perder";
    }
    if (dist (p1+a, p2+b, 234, 86)<40) {
      pantalla = "perder";
    }
    if (dist (p1+a, p2+b, 330, 40)<40) {
      pantalla = "perder";
    }
    if (dist (p1+a, p2+b, 330, 360)<40) {
      pantalla = "perder";
    }

    //ganar al tocar meta
    if (dist (p1+a, p2+b, 380, 0)<20) {
      pantalla = "ganar";
    }


    // linea de meta
    for (int j=38; j<height; j++) {
      for (int i=0; i<height; i++) {
        if ((i+j)%2==0) {
          fill (151, 151, 151);
          // fill (185, 185, 191);
          //  fill (205, 205, 211);
        } else {
          fill(0);
        }  
        noStroke();
        rect (j*10, i*10, 10, 10);
      }
    }
    //reloj
    tiempo++;
    text(tiempo, width-60, height/4-70);
    if (tiempo>=70) {
      pantalla="perder";
    }
  } 

  //CUARTA PANTALLA (GANAR)
  else if (pantalla.equals("ganar")) {
    // funcion sin parametro
    fondo ();
  
    // fondo nubes
    for (int i =0; i < 4; i ++ ) {
      nubes [i] = loadImage("fondo" + i+".png");
    }
    n++;
    n1=-10+n; 
    n2=100; 
    n3=400; 
    n4=50+n; 
    n5=120; 
    n6=-50+n; 
    n7=140; 
    n8=100+n; 
    n9=160;
    //nubes animadas
    for (int i =0; i < 4; i ++ ) {
      image (nubes [i], posX [i], posY [i], 400, 400);
      if (posX [i] < width) {
        posX [i]++;
      }
      if (posX [i] > width) {
        posX [i] --;
      }
    }

    fill (255);
    text("Ganaste", width/2, height/3);
    text ("creado por Fabiola J. Veracierta V.", width/2, height/3+30);
    text ("Legajo 91399/9", width/2, height/3+40);
    text ("agradecimientos a jereCiraptor, damianButtowski", width/2, height/3+70);
    text ("simonKong y PauDirection", width/2, height/3+80);

    //linea que será el BOTON de instrucciones
    smooth(); 
    stroke (100, 154, 206);
    strokeCap(ROUND); 
    pushStyle();
    if ((mouseX>botonLinea[0]-15 )&& (mouseX<botonLinea[0]-15 + botonLinea[2]+30) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
      fill(100, 154, 206);
    } else { 
      fill(0);
    }
    rect(botonLinea[0]-15, botonLinea[1], botonLinea[2]+30, botonLinea[3]);
    popStyle();
    text("volver a jugar", width/2, height/2+40);
  } 

  //QUINTA PANTALLA (PERDER Y CREDITOS)
  else if (pantalla.equals("perder")) {
   // funcion sin parametro
    fondo ();
    fill(255);
    text("UPS! PERDISTE", width/2, height/3);
    text ("creado por Fabiola J. Veracierta V.", width/2, height/3+30);
    text ("Legajo 91399/9", width/2, height/3+40);

    //linea que será el BOTON de instrucciones
    smooth(); 
    stroke (100, 154, 206);
    strokeCap(ROUND); 
    n++;
    n1=-10+n; 
    n2=100; 
    n3=400; 
    n4=50+n; 
    n5=120; 
    n6=-50+n; 
    n7=140; 
    n8=100+n; 
    n9=160;
    //nubes animadas
    for (int i =0; i < 4; i ++ ) {
      image (nubes [i], posX [i], posY [i], 400, 400);
      if (posX [i] < width) {
        posX [i]++;
      }
      if (posX [i] > width) {
        posX [i] --;
      }
    }
    pushStyle();
    if ((mouseX>botonLinea[0]-15 )&& (mouseX<botonLinea[0]-15 + botonLinea[2]+30) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
      fill(100, 154, 206);
    } else { 
      fill(0);
    }
    rect(botonLinea[0]-15, botonLinea[1], botonLinea[2]+30, botonLinea[3]);
    popStyle();
    text("volver a jugar", width/2, height/2+40);
  }
}

void mousePressed() {
  //evento que cambia de inicio a instrucciones
  if (pantalla.equals("inicio") && (mouseX>botonLinea[0] )&& (mouseX<botonLinea[0] + botonLinea[2]) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
    pantalla = "instrucciones";
  } else if (pantalla.equals("instrucciones") && (mouseX>botonLinea[0] )&& (mouseX<botonLinea[0] + botonLinea[2]) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
    pantalla = "jugando";
  } else if  (pantalla.equals ("perder")&&(mouseX>botonLinea[0]-15 )&& (mouseX<botonLinea[0]-15 + botonLinea[2]+30) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
    reiniciar();
  } else if  (pantalla.equals ("ganar")&&(mouseX>botonLinea[0]-15 )&& (mouseX<botonLinea[0]-15 + botonLinea[2]+30) && (mouseY>botonLinea[1]) && (mouseY < botonLinea[1]+botonLinea[3])) {
    reiniciar();
  }


  //pantalla jugando
  else if (pantalla.equals ("jugando") && (mouseX >380) && (mouseX < 380 + 20)&& (mouseY > 0) && (mouseY < 0 + 400)) {
    pantalla="ganar";
  }

  //escoge perro
  if ((mouseX>width/3-30)&& (mouseX<width/3-30 + 45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
    escogePerro=true;
  }
  //escoge chico
  if ((mouseX>width/3+107)&& (mouseX<width/3+107 +  45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
    escogeChico=true;
  }
  //escoge chica
  if ((mouseX>width/3+40)&& (mouseX<width/3+40 +  45) && (mouseY>height/3+45) && (mouseY < height/3+45+45)) {
    escogeChica=true;
  }
}

//reiniciar juego
void reiniciar() {
  pantalla = "inicio";
  a=0;
  b=0;
  p1= 13.3;
  p2= 178.3;
  tiempo = 0;
  escogePerro=false;
  escogeChica=false;
  escogeChico=false;
  n=1;
  n1=-10+n; 
  n2=100; 
  n3=400; 
  n4=50+n; 
  n5=120; 
  n6=-50+n; 
  n7=140; 
  n8=100+n; 
  n9=160;
}

void keyPressed() {
  //movimiento de personaje
  if (key=='d' ) {
    a=a+8;
  } else if (key=='a' ) {
    a=a-8;
  } else if (key=='w' ) {
    b=b-8;
  } else if (key=='s' ) {
    b=b+8;
  }
}

//funciones Con Parametros
void rectangulo (int posX_, int posY_, int ancho_, int alto_) {
  stroke (110, 115, 142);
  noFill ();
  rectMode (CORNER);
  rect (posX_, posY_, ancho_, alto_);
}

void asteroide (int x, int y, int an, int al) {
  image (asteroide, x, y, an, al);
}

void fondo () {
  image(sky, 0, 0, 1000, 400);
}
