// Importar la libreria de sonido
import processing.sound.*;
// Variable tipo sonido 
SoundFile beat1;
SoundFile beat2;
SoundFile beat3;
SoundFile beat4;
SoundFile beat5;
SoundFile beat6;


SoundFile piano1;
SoundFile piano2;
SoundFile piano3;
SoundFile piano4;
SoundFile piano5;


void setup() {
  size(720, 720);
  background(255);
    
  // Cargar un archivo del folder /data
  beat1 = new SoundFile(this, "beat1.mp3");
  beat2 = new SoundFile(this, "beat2.mp3");
  beat3 = new SoundFile(this, "beat3.mp3");
  beat4 = new SoundFile(this, "beat4.mp3");
  beat5 = new SoundFile(this, "beat5.mp3");
  beat6 = new SoundFile(this, "beat6.mp3");

  piano1 = new SoundFile(this, "a.wav");
  piano2 = new SoundFile(this, "b.wav");
  piano3 = new SoundFile(this, "c.wav");
  piano4 = new SoundFile(this, "d.wav");
  piano5 = new SoundFile(this, "e.wav");

}      

void draw() { 
  
}

void keyReleased(){
  // 
  if(key == '1'){
    beat1.play();
  }
  if(key == '2'){
    beat2.play();
  }
  if(key == '3'){
    beat3.play();
  }
  if(key == '4'){
    beat4.play();
  }
  if(key == '5'){
    beat5.play();
  }
  if(key == '6'){
    beat6.play();
  }
  if(key == 'q'){
    piano1.play();
  }
  if(key == 'q'){
    piano2.play();
  }
  if(key == 'w'){
    piano3.play();
  }
  if(key == 'e'){
    piano4.play();
  }
  if(key == 'r'){
    piano5.play();
  }
  
}