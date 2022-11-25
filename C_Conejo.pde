class Conejo {
  //propiedades globales de mi clase conejo
  int Cx, Cy, Ct; 
  PImage conejo; 
  boolean Auch;

  //Construir al conejo
  Conejo(PImage conejo, int Cx, int Cy, int Ct) {
    this.Cx = Cx;
    this.Cy = Cy;
    this.Ct = Ct;
    this.conejo = conejo;
  }

  //Que el conejito aparezca
  void DibujoConejo() {
    pushStyle();
    imageMode(CENTER);
    image(conejo, Cx, Cy, Ct, Ct);
    popStyle();
  }

  //Metodo de movimiento conejito
  void moverConejo(int tecla) { //
    if (tecla == DOWN && Cy < height-Ct/2) {  //abajo
      Cy += 1;
    }
    if (tecla == UP && Cy > Ct/2) { //arriba
      Cy -= 1 ;
    }
  }
}
