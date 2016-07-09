// Ex2_3_1

/**
 * Muestra los colores que hay de distancia entre dos colores generados aleatoriamente
 * 
 * MOUSE
 * left click          : new random color set
 * position x          : interpolation resolution
 * position y          : row count
 * 
 * KEYS
 * 1-2                 : switch interpolation style
 */
boolean grabando = false;



int tileCountX = 10;
int tileCountY = 5;

// Arreglo de colores
color[] colorsLeft = new color[tileCountY];
color[] colorsRight = new color[tileCountY];
color[] colors;

boolean interpolateShortest = true;


void setup() { 
  size(700, 700);
  colorMode(HSB,360,100,100,100); 
  noStroke();
  shakeColors();
} 


void draw() { 

  float tileWidth = width / (float)tileCountX;
  float tileHeight = height / (float)tileCountY;
  color interCol;
  
  // just for ase export
  colors = new color[tileCountX*tileCountY];
  int i = 0;
  
  for (int gridY=0; gridY< tileCountY; gridY++) {
    color col1 = colorsLeft[gridY];
    color col2 = colorsRight[gridY];

    for (int gridX=0; gridX< tileCountX ; gridX++) { 
      float amount = map(gridX,0,tileCountX-1,0,1);
      
      if (interpolateShortest) {
        // rgb
        colorMode(RGB,255,255,255,255);
        interCol = lerpColor(col1,col2, amount); 
        // hsb
        colorMode(HSB,360,100,100,100);
      }
      
      else {
        interCol = lerpColor(col1,col2, amount); 
      }
      
      float posX = tileWidth*gridX;
      float posY = tileHeight*gridY;
      
      fill(interCol);
      rect(posX, posY, tileWidth, tileHeight); 
      
      // just for ase export
      colors[i] = interCol;
      i++;
    }
  }

  if( grabando == true){
    saveFrame("frames/imagen####.jpg");
    println("grabando");
  }
} 

void mouseReleased() {
  shakeColors();
}

void shakeColors() {
  for (int i=0; i<tileCountY; i++) {
    colorsLeft[i] = color(random(0,60), random(0,100), 100);
    colorsRight[i] = color(random(160,190), 100, random(0,100));
  }
}

void keyReleased() {
  if(key == 'r'){
    grabando = !grabando;
  }
}