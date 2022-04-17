void setup(){
  size(400,400);
  //Fondo color verde viejo
  background( 148, 153, 95);
  
  
}
  void draw (){
    //truco para ubicar coordenadas
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  //rectangulo color beige del centro
    stroke(214, 190, 164);
    fill(214, 190, 164);
    rect(0,150,400,150);
    
   
    //triangulo marron de fondo (obj1)
    fill(67, 52, 33);
    stroke(67, 52, 33);
triangle(375,100,375,150,300,150);
//triangulo de fondo marron claro (obj2)
fill(157, 137, 78);
stroke(157, 137, 78);
triangle(25,125,25,185,143,185);
//marco izquierdo
fill(0);
stroke(0);
rect(0,0,25,400);
    //marco derecho
    fill(0);
    stroke(0);
    rect(375,0,25,400);
     //cabeza
    fill(131, 94, 75);
    stroke(131, 94, 75);
    ellipseMode(CENTER);
    ellipse(200,75,100,100);
     //mechon de cabello derecho
     fill(131, 94, 75);
    stroke(131, 94, 75);
    quad(150,75,150,175,200,175,200,75);
        
    //triangulo blanco de cuello
    fill(255);
    stroke(255);
    triangle(225,110,190,157,225,155);
    
     //circulo azul (cuerpo)
   
    fill(35, 59, 97);
    stroke(35, 59, 97);
    ellipse(215,260,217,210);
    //pecho
    fill(234, 218, 192);
    stroke(234, 218, 192);
    ellipse(210,194,140,80);
    //mechon de cabello izquierdo
     fill(131, 94, 75);
    stroke(131, 94, 75);
    quad(225,75,250,75,250,225,225,225);
    //rostro (triangulo blanco)
    fill(255);
    stroke(255);
    triangle(150,75,190,157,190,75);
    //rostro (triangulo negro)
    fill(0);
    stroke(0);
    triangle(190,75,190,157,250,75);
    
    //pollina izquierda
    fill(0);
    stroke(0);
    triangle(190,26,150,75,190,75);
 
    //rectangulo negro (cerca del marco derecho) "obj3"
    fill(0);
    stroke(0);
    rect(325,250,50,150);
        //rectangulo negro (cerca del marco izquierdo) "obj4"
    fill(0);
    stroke(0);
    rect(25,250,50,150);
    //cuadrado negro cerca del marco izquierdo "obj5"
    fill(0);
    stroke(0);
    quad(75,350,75,400,125,400,125,350);
    //triangulo beige cerca del obj5. "obj6"
    fill(215, 191, 165);
    stroke(215, 191, 165);
    triangle(125,350,125,400,200,400);
    //triangulo beige al lado del obj 6 . "obj7"
      fill(214, 190, 164);
    stroke(214, 190, 164);
    triangle(200,350,275,400,200,400);
    //trapesio blanco o "obj8"
    fill(255);
    stroke(255);
    quad(75,250,75,350,125,350,125,300);
    //trapesio beige "obj9"
    fill(234, 218, 191);
    stroke(234, 218, 191);
    quad(125,300,125,350,200,400,200,350);
    //triangulo negro cerca del obj3. "obj10"
    fill(0);
    stroke(0);
    triangle(325,350,325,400,300,400);
    //trapesio blanco cerca del obj9 y obj10. "obj11"
    fill(255);
    stroke(255);
    quad(200,350,275,400,300,400,325,350);
    //hombro izquierdo
    fill(0);
    stroke(0);
    ellipseMode(CORNER);
    ellipse(275,225,50,50);
    
    //brazo izquierdo
    fill(220, 69, 50);
    stroke(220, 69, 50);
    rect(275,250,50,100);
    //brazo derecho
 fill(220, 69, 50);
    stroke(220, 69, 50);
    triangle(125,200,75,250,125,300);

   
   
    
    
  }
