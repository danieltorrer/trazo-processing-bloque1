/**
 * extract and sort the color palette of an image
 * 	 
 * MOUSE
 * position x          : resolution
 * 
 * KEYS
 * 1-3                 : load different images
 * 4                   : no color sorting
 * 5                   : sort colors on hue
 * 6                   : sort colors on saturation
 * 7                   : sort colors on brightness
 * 8                   : sort colors on grayscale (luminance)
 * s                   : save png
 * p                   : save pdf
 * c                   : save color palette
 */

PImage img;
color[] colors;

String sortMode = null;



void setup(){
  size(600, 600);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  noCursor();
  img = loadImage("pic1.jpg"); 
}


void draw(){

  int tileCount = width / max(mouseX, 5);
  float rectSize = width / float(tileCount);

  // get colors from image
  int i = 0; 
  colors = new color[tileCount*tileCount];
  for (int gridY=0; gridY<tileCount; gridY++) {
    for (int gridX=0; gridX<tileCount; gridX++) {
      int px = (int) (gridX * rectSize);
      int py = (int) (gridY * rectSize);
      colors[i] = img.get(px, py);
      i++;
    }
  }  

  // draw grid
  i = 0;
  for (int gridY=0; gridY<tileCount; gridY++) {
    for (int gridX=0; gridX<tileCount; gridX++) {
      fill(colors[i]);
      rect(gridX*rectSize, gridY*rectSize, rectSize, rectSize);
      i++;
    }
  }

}


void keyReleased(){
  if (key=='s' || key=='S') saveFrame("frame_##.png");

  if (key == '1') img = loadImage("pic1.jpg");
  if (key == '2') img = loadImage("pic2.jpg"); 
  if (key == '3') img = loadImage("pic3.jpg"); 
}








