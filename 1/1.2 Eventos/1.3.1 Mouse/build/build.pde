import processing.pdf.*;

boolean guardar = false;

void setup(){
  size(600, 600);
  background(#bababa);
  //frameRate(60);
  beginRecord(PDF, "export/vector###.PDF");
}
  
// animar
void draw(){  
  ellipseMode(CENTER);
  //if( mousePressed){
    fill(#379392);
    ellipse( mouseX, mouseY , 100, 100);
    fill(#4FB0C6);
    ellipse( mouseY, mouseX , 50, 50);
    //////////////////////////////////
    fill(#4F86C6);
    ellipse(width - mouseX, height - mouseY , 100, 100);
    
    fill(#6C49B8);
    ellipse(width - mouseY, height - mouseX , 50, 50);
  //}
  

  
  if( guardar == true){
    endRecord();
    guardar = false;
  }
}

void keyReleased(){
  // key
  // Si, la tecla es igual a 's'
  if( key == 's'){
    saveFrame("ejemplo####.jpg");
  }
  
  if( key == 'p'){
    guardar = true;
  }
  //guarda imagen
  
}