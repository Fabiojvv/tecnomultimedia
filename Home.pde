//Llamamos a las clases

FondoN inicio;
Boton boton;

void setup () {
  size (600, 400);
  //constructor
  inicio = new FondoN();
  boton = new Boton ();
  
}
void draw(){
  //truco para ubicar coordenadas
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
  
 //llamamos a los métodos
 inicio.titulo();
 boton. botonPress();
}
