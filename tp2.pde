//https://youtu.be/B7v66Rm0PC0

//variables
int cant = 10;
int tam;
float rell;

void setup () {
  size (400, 400);
  tam = width/cant;
}
void draw () {
  //ilusion optica
  for (int x=0; x<width+10; x++) { 
    for (int y =0; y<height+10; y++) {
      strokeWeight(4);
      //condiciones
      if (keyPressed) { //cambiar color del relleno "rell"
        colorRandom();
      } else { //cambiar color del borde "borde"
        borde();
      }
     
      rect (x*tam, y*tam, tam, tam);
    }
  }
}
