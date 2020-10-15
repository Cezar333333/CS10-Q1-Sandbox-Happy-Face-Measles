// Global Variables
PImage pic;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio;
float imageHeightRatio;
void setup() {
  size(800, 600); //fullScreen(), displayWidth & displayHeight
  pic = loadImage("theoreticala.jpg"); //Dimension: 512 Width, 345 Height
  imageWidthRatio = 512.0/512.0; //must be decmals due to flat
  imageHeightRatio = 345.0/512.0; //must be decmals due to flat
  imageStartWidth = width*0;
  imageStartHeight = height*0;
  imageWidth = width*imageWidthRatio; //Aspect Ratio
  imageHeight = height*imageHeightRatio; //Aspect Ratio
}

void draw() {
  rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
  image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
}//End draw()

void keyPressed () { // Review KeyBoard Input
}//End keyPressed()

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}//End mousePressed()
