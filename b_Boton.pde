class Boton {
  int BxPropiedad, By, Ancho, Alto;
  int ahora, despues;

  //igualmos las propiedades con los parametros
  Boton (int BxParametro, int By, int Ancho, int Alto) { 
    this.BxPropiedad = BxParametro;
    this.By = By;
    this.Ancho = Ancho;
    this.Alto = Alto;
  }

  //dibujamos nuestro boton e igualamos los estados
  void DibujarBoton(int aqui, int alla) { 
    this.ahora = aqui;
    this.despues = alla;
    fill(255);
    stroke(200);
    rectMode(CENTER);
    rect(BxPropiedad, By, Ancho, Alto);
  }

  //metodo que detecta los botones
  boolean YATOQUE(int BxPropiedad, int By, int Ancho, int Alto) {
    this.BxPropiedad = BxPropiedad;
    this.By = By;
    this.Ancho = Ancho;
    this.Alto = Alto;
    boolean Presione = mouseX > BxPropiedad - Ancho/2 && mouseX < BxPropiedad + Ancho/2 && mouseY > By - Alto/2 && mouseY < By + Alto/2 == true;
    return Presione;
  }
}
