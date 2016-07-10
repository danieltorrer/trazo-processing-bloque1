// Setup se ejecuta una sola vez
void setup(){
  size(200,200);
}

//Draw se ejecutar indefinidamente
void draw(){
  //Establece el fondo del sketch
  background(#38a185);
  rectMode(CENTER);
  rect(100,100,23,100);
  ellipse( 100, 70, 50, 50);
  ellipse( 85, 70, 15, 30);
  ellipse( 115, 70, 15, 30);
  
  line(88, 149, 88, 168);
  line(110, 150, 110, 169);
  //    x    y    x    y
}