import processing.sound.*;

TriOsc triangulo;

void setup() {
    size(720,720);
    background(255);
    
    // Crear e iniciar un oscilador con forma de triangulo
    //triangulo es un nuevo objeto de tipo Triosc. this = Este skecth
    triangulo = new TriOsc(this);
    
    //Start the Sine Oscillator. There will be no sound in the beginning
    //unless the mouse enters the   
    //Triangulo comienza a sonar.
    triangulo.play();
}

void draw() {
    // Map mouseY from 0.0 to 1.0 for amplitude
    triangulo.amp(map(mouseY, 0, height, 1.0, 0.0));

    // Map mouseX from 20Hz to 1000Hz for frequency  
    triangulo.freq(map(mouseX, 0, width, 80.0, 1000.0));
  
    // Map mouseX from -1.0 to 1.0 for left to right 
    triangulo.pan(map(mouseX, 0, width, -1.0, 1.0));
}