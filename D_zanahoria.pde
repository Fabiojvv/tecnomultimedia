class Zanahoria {
  //propiedades globales de mi zanahoria
  int Zx, Zy, Zt;
  PImage zanahoria;
  boolean Yummy; // para la colision

  //Construir la zanahoria
  Zanahoria(PImage zanahoria, int Zx, int Zy, int Zt) {
    this.Zx = Zx;
    this.Zy = Zy;
    this.Zt = Zt;
    this.zanahoria = zanahoria;
    Yummy = false;
  }
  //dibujamos la zanahoria
  void DibujoZanahoria() {
    pushStyle();
    imageMode(CENTER);
    image(zanahoria, Zx, Zy, Zt, Zt);
    popStyle();
  }
  //Cambio el valor del booleano para detectar el choque
  void llego() {
    Yummy = true;
  }
}
